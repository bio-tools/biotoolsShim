import urllib3
import json
import argparse
from argparse import RawTextHelpFormatter
from json.decoder import JSONDecodeError
import time
import sys, os
from rdflib import Graph


parser = argparse.ArgumentParser(description="""
BioTools RDFizer tool, v0.1a, for testing purpose only. 

Sample Usage : 
    python biotools_rdfizer.py [--proxy_url <PROXY_URL>] --tool_id signalp 
    python biotools_rdfizer.py [--proxy_url <PROXY_URL>] --test_dump 
    python biotools_rdfizer.py [--proxy_url <PROXY_URL>] --dump 
    
For any issue, please contact alban.gaignard@univ-nantes.fr  
                                 """, formatter_class=RawTextHelpFormatter)
parser.add_argument('-px', '--proxy_url', type=str, help='your proxy URL, including the proxy port', dest='px', required=False)
parser.add_argument('-id', '--tool_id', type=str, help='the ID of the Bise resource to be exported', dest='id', required=False)
parser.add_argument('-dump', '--dump', help='complete Bio.Tools RDF dump', dest='dump', action='store_true', required=False)
parser.add_argument('-test', '--test_dump', help='dump only 10 Bio.Tools resources in RDF', dest='test', action='store_true', required=False)

def main():
    args = parser.parse_args()

    if (args.id is None) and (args.dump is False) and (args.test is False):
        print('Please fill one of the --tool_id, --dump, or --test_dump parameters')
        print()
        parser.print_help()
        exit(0)

    connection = {
        'proxy': args.px
    }

    if args.id:
        graph = Graph()
        # biotoolsID = "signalp"
        # biotoolsID = "bwa"
        raw_jld = get_tool_as_linked_data(args.id, connection)
        import_to_graph(graph, raw_jld)
        print(str(graph.serialize(format='turtle').decode('utf-8')))

    if args.test:
        graph = Graph()
        crawl_tools_as_linked_data(graph, connection, limit=100)
        graph.serialize(destination='biotools-dump-' + time.strftime("%Y%m%d") + '.ttl', format='turtle',
                        encoding='utf-8')

    if args.dump:
        graph = Graph()
        # -1 value as limit to dump all content
        crawl_tools_as_linked_data(graph, connection, limit=-1)
        graph.serialize(destination='biotools-dump-' + time.strftime("%Y%m%d") + '.ttl', format='turtle',
                        encoding='utf-8')


def rdfize(json_entry):
    """
    Transforms a biotools json entry into RDF, and returns a JSON-LD serialization. The following fields
    are covered: contact, publication, EDAM topic, EDAM operation, EDAM inputs & outputs.
    """

    entry = json_entry

    try:

        ctx = {
            "@context": {
                "@base": "https://bio.tools/",
                "biotools": "https://bio.tools/ontology/",
                "edam": "http://edamontology.org/",
                "pubmed": "https://www.ncbi.nlm.nih.gov/pubmed/",
                "pmc": "https://www.ncbi.nlm.nih.gov/pmc/",
                "doi": "https://doi.org/",
                "dc": "http://purl.org/dc/terms/",
                "rdfs": "http://www.w3.org/2000/01/rdf-schema#",

                # "hasContact": "dc:publisher",
                # "hasPublication": "dc:references",

                # "id": "datacite:identifier",
                "id": "dc:identifier",
                # "name": "datacite:title",
                "name": "dc:title",
                # "description": "datacite:description",
                "description": "dc:description",
                # "license": "datacite:rights",
                "license": "dc:license",
                "hasContact": "datacite:contributor",
                "toolType": "datacite:resourceType",
                "additionDate": "datacite:date",
                "language": "datacite:format",
                "homepage": "datacite:alternateIdentifier",
                "hasPublication": "dc:references",
                "download": "datacite:alternateIdentifier",

                "hasOperation": "biotools:has_function",
                "hasInputData": "edam:has_input",
                "hasOutputData": "edam:has_output",
                "hasTopic": "edam:has_topic"
            }
        }
        entry['@id'] = str(entry['biotoolsID'])
        entry['@type'] = {"@id": 'biotools:Resource'}
        entry.update(ctx)

        # for contact in entry['contact']:
        #     if not "hasContact" in entry.keys():
        #         entry['hasContact'] = [contact['name']]
        #     else :
        #         entry['hasContact'].append(contact['name'])

        # for download in entry['download']:
        #     if download['url']:
        #         if not "download" in entry.keys():
        #             entry['download'] = [download['url']]
        #         else :
        #             entry['download'].append(download['url'])

        for publication in entry['publication']:
            if publication['pmid']:
                if not "hasPublication" in entry.keys():
                    entry['hasPublication'] = [{"@id": 'pubmed:' + publication['pmid']}]
                else:
                    entry['hasPublication'].append({"@id": 'pubmed:' + publication['pmid']})
            if publication['pmcid']:
                if not "hasPublication" in entry.keys():
                    entry['hasPublication'] = [{"@id": 'pmc:' + publication['pmcid']}]
                else:
                    entry['hasPublication'].append({"@id": 'pmc:' + publication['pmcid']})
            if publication['doi']:
                if not ("<" in publication['doi'] or ">" in publication['doi']):
                    if not "hasPublication" in entry.keys():
                        entry['hasPublication'] = [{"@id": "https://doi.org/" + publication['doi']}]
                    else:
                        entry['hasPublication'].append({"@id": "https://doi.org/" + publication['doi']})

        for item in entry['function']:
            for op in item['operation']:
                if not "hasOperation" in entry.keys():
                    entry['hasOperation'] = [{"@id": op['uri']}]
                else:
                    entry['hasOperation'].append({"@id": op['uri']})

            for input in item['input']:
                if not "hasInputData" in entry.keys():
                    entry['hasInputData'] = [{"@id": input['data']['uri']}]
                else:
                    entry['hasInputData'].append({"@id": input['data']['uri']})

            for output in item['output']:
                if not "hasOutputData" in entry.keys():
                    entry['hasOutputData'] = [{"@id": output['data']['uri']}]
                else:
                    entry['hasOutputData'].append({"@id": output['data']['uri']})

        for item in entry['topic']:
            if not "hasTopic" in entry.keys():
                entry['hasTopic'] = [{"@id": item['uri']}]
            else:
                entry['hasTopic'].append({"@id": item['uri']})

    except KeyError as error:
        print(json.dumps(entry, indent=4, sort_keys=True))
        print()

    raw_jld = json.dumps(entry)
    return raw_jld


def get_web_service(connection):
    """
    establish an HTTP connection based on url, user, password, and proxy given in parameter
    :param connection: the connection information (user, password, url, and proxy)
    :return: a urllib3 PoolManager instance connected to the endpoint url
    """
    urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)
    http = urllib3.PoolManager()
    # auth_header = urllib3.util.make_headers(basic_auth=connection["username"] + ':' + connection["password"])
    if ('proxy' in connection.keys()) and connection["proxy"]:
        # http = urllib3.ProxyManager(connection["proxy"], headers=auth_header)
        http = urllib3.ProxyManager(connection["proxy"])
    # http.headers.update(auth_header)
    http.headers['Accept'] = 'application/json'
    http.headers['Content-type'] = 'application/json'
    return http


def get_tool_as_linked_data(tool_id, connection):
    """
    Given its identifier, transforms a biotool entry in RDF using common vocabularies.
    :param tool_id: the biotool identifier
    :param connection: credentials, possibly proxy
    :return: a string representation of the corresponding JSON-LD document
    """
    http = get_web_service(connection)
    try:
        req = http.request('GET', 'https://bio.tools/api/tool/' + str(tool_id) + '?format=json')
        entry = json.loads(req.data.decode('utf-8'))
        # print(json.dumps(entry, indent=4, sort_keys=True))
        # print()
        return rdfize(entry)
    except urllib3.exceptions.HTTPError as e:
        print("Connection error")
        print(e)
        return None


def crawl_tools_as_linked_data(graph, connection, limit):
    """
    transforms a biotool entry in RDF using common vocabularies.
    :param connection: credentials, possibly proxy, and URL to connect to
    :param limit: an integer value specifying the number of entries to transform, -1 means no limit.
    :return: a string representation of the corresponding JSON-LD document
    """
    http = get_web_service(connection)
    try:
        req = http.request('GET', 'https://bio.tools/api/tool/?page=1&?format=json')
        countJson = json.loads(req.data.decode('utf-8'))
        count = int(countJson['count'])
        print(str(count)+ " available BioTools entries")

        i = 1
        nbTools = 1
        hasNextPage = True
        while hasNextPage :
            req = http.request('GET', 'https://bio.tools/api/tool/?page=' + str(i) + '&?format=json')
            try:
                entry = json.loads(req.data.decode('utf-8'))
            except JSONDecodeError as e:
                print("Json decode error for " + str(req.data.decode('utf-8')))
                break

            hasNextPage = (entry['next'] != None)
            # print("Processing page "+str(i)+ " hasNext="+str(hasNextPage))

            for tool in entry['list']:
                jsonld = rdfize(tool)
                import_to_graph(graph, jsonld)
                nbTools += 1
                progress = nbTools * 100 / count
                if (nbTools % 500 == 0) :
                    print(str(round(progress))+" % done")
                if ((limit != -1) and (nbTools >= limit)):
                    return
            i+=1

    except urllib3.exceptions.HTTPError as e:
        print("Connection error")
        print(e)
        return None


def import_to_graph(graph, raw_jld):
    """
    Parse a JSON-LD document and add it to an in-memory RDF graph
    :param graph: an in-memory RDF graph
    :param raw_jld: a string representation of a JSON-LD document
    :return: the populated RDF graph
    """
    g = graph
    g.parse(data=raw_jld, format='json-ld')
    # print(g.serialize(format='turtle').decode('utf-8'))
    # print()
    # print(g.serialize(format = 'json-ld', indent = 4).decode('utf-8'))
    # print()
    # return str(g.serialize(format='turtle').decode('utf-8'))
    return g


if __name__ == '__main__':
    main()
