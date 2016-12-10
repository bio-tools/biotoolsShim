#!/bin/python3

import re
import sys
import csv
import pprint
import xml.etree.ElementTree as et
from xml.dom import minidom


# A manual map of name->toolID
HAND_CONVERSIONS = {'Generic GO Term Mapper': 'GOTermMap',
                    'Generic GO Term Finder': 'GOTermFind',
                    'DISCOVAR de novo': 'DISCOVARnovo'
                   }

SEPERATOR = '|'

tools = []

def read_cvsfile(filename):
    ret = []
    with open(filename, mode='r') as infile:
        reader = csv.reader(infile)

        keys = next(reader)

        for row in reader:
            tool = dict(zip(keys,row))
            ret.append(tool)
    return ret

def make_toolID(name):
    # There is a bunch af rules to this conversion...
    # See: https://github.com/bio-tools/biotoolsSchema/blob/master/versions/biotools-2.0.0/biotools-2.0.0.xsd
    # Search for toolID and biotoolsIdType

    # We have a list on hand-converted name->toolID. These take precedence
    if name in HAND_CONVERSIONS:
        return HAND_CONVERSIONS[name]

    # Replace space with _
    toolID = name.replace(' ','_')

    # Limit the alpabeth
    toolID = re.compile('[^A-Za-z0-9_\-_~.]').sub('',toolID)
    return toolID[0:12]


def construct_summary(tool):
    summary = et.Element('summary')

    name = et.Element('name')
    name.text = tool['name']

    toolID = et.Element('toolID')
    toolID.text = make_toolID(tool['name'])

    description = et.Element('description')
    description.text = tool['description']

    homepage = et.Element('homepage')
    homepage.text = tool['homepage']

    # Append in the right order
    summary.append(name)
    summary.append(toolID)
    summary.append(description)
    summary.append(homepage)

    return summary

def construct_functions(tool):
    func_elements = []

    func_list = tool['function']
    if isinstance(func_list, str):
        func_list = [func_list]
        
    for func in func_list:
        term_val,uri_val = re.sub(r"\[([^\[]*)]","\nhttp://edamontology.org/\g<1>",func).split('\n')

        uri = et.Element('uri')
        uri.text = uri_val

        term = et.Element('term')
        term.text = term_val


        operation  = et.Element('operation')
        operation.extend((uri,term))

        function  = et.Element('function')
        function.append(operation)
        func_elements.append(function)

    return func_elements

def construct_toolTypes(tool):
    elements = []

    thing = tool['toolType']
    if isinstance(thing, str):
        thing = [thing]
        
    for item in thing:
        toolType  = et.Element('toolType')
        toolType.text = item
        elements.append(toolType)

    return elements
    

def construct_topics(tool):
    elements = []

    top_list = tool['topic']
    if isinstance(top_list, str):
        top_list = [top_list]
        
    for item in top_list:
        term_val,uri_val = re.sub(r"\[([^\[]*)]","\nhttp://edamontology.org/\g<1>",item).split('\n')

        uri = et.Element('uri')
        uri.text = uri_val

        term = et.Element('term')
        term.text = term_val

        topic  = et.Element('topic')
        topic.extend((uri,term))
        elements.append(topic)

    return elements

def construct_label(tool):
    label = et.Element('label')
    label.extend(construct_toolTypes(tool))

    label.extend(construct_topics(tool))

    collectionID = et.Element('collectionID')
    collectionID.text = tool['collectionID']

    label.append(collectionID)

    return label

def construct_publications(tool):
    elements = []

    thing = tool['publication']
    if isinstance(thing, str):
        thing = [thing]
        
    for item in thing:
        doi = et.Element('doi')
        doi.text = item

        publication  = et.Element('publication')
        publication.append(doi)
        elements.append(publication)

    return elements

def construct_contact(tool):
    contact = et.Element('contact')
    if 'http' in tool['contact']:
        url = et.Element('url')
        url.text = tool['contact']
        contact.append(url)
    elif '@' in tool['contact']:
        email = et.Element('email')
        email.text = tool['contact']
        contact.append(email)
    return contact

if __name__ == "__main__":
    assert len(sys.argv) == 2, 'missing filename or something...'

    tools = read_cvsfile(sys.argv[1])
    
    root = et.Element('root')
    root.set('xmlns:xsi',"http://www.w3.org/2001/XMLSchema-instance")
    root.set('xsi:schemaLocation',"http://bio.tools biotools-2.0.0.xsd")
    for t in tools:

        # Convert all multi-value cells into python list-of-strings
        for k,v in t.items():
            if SEPERATOR in v:
                t[k] = v.split(SEPERATOR)

        tool = et.Element('tool')
        tool.append(construct_summary(t))
        tool.extend(construct_functions(t))
        tool.append(construct_label(t))
        tool.extend(construct_publications(t))
        tool.append(construct_contact(t))

        root.append(tool)

    printer = pprint.PrettyPrinter(width=80)
    dom = minidom.parseString(et.tostring(root,encoding="unicode"))


    #printer.pprint(tools)
    print(dom.toprettyxml())
