# Motivations

# Prerequisites
You first need to install python dependencies. They are specified in the `requirements.txt` file and can be automatically downloaded with Conda: 
```
conda create --name biotools-rdf --file requirements.txt -c conda-forge
```
Then the software environment must be launched through the following command: 
```
source activate biotools-rdf 
```

# Usage examples
```sh
python src/biotools_rdfizer.py --tool_id signalp
```
This command search for the `signalp` tool through the Bio.Tools API, and transforms it into RDF. For now, the semantic alignment is straightforward and not consistent with state of the art ontologies and controlled vocabularies. This should addressed in a near future. 

You should obtain in yout terminal something like:
```turtle
@prefix biotools: <https://bio.tools/ontology/> .
@prefix dc: <http://purl.org/dc/terms/> .
@prefix doi: <https://dx.doi.org/> .
@prefix edam: <http://edamontology.org/> .
@prefix pmc: <https://www.ncbi.nlm.nih.gov/pmc/> .
@prefix pubmed: <https://www.ncbi.nlm.nih.gov/pubmed/> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix xml: <http://www.w3.org/XML/1998/namespace> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .

<https://bio.tools/signalp> a biotools:Resource ;
    edam:has_input edam:data_2044 ;
    edam:has_output edam:data_1277,
        edam:data_2955 ;
    edam:has_topic edam:topic_3510 ;
    dc:description "Prediction of the presence and location of signal peptide cleavage sites in amino acid sequences from different organisms." ;
    dc:publisher "Henrik Nielsen" ;
    dc:references <https://www.ncbi.nlm.nih.gov/pubmed/21959131>,
        "doi:10.1038/nmeth.1701" ;
    dc:title "SignalP" ;
    biotools:has_function edam:operation_0418,
        edam:operation_0422 .

```


```
python src/biotools_rdfizer.py --test
```
This command dumps only 10 entries into RDF in a file located in the current directory. 

```
python src/biotools_rdfizer.py --dump
```
This command dumps all Bio.Tools content in a file located in the current directory. 
