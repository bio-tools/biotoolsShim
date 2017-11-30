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
```
python src/biotools_rdfizer.py --tool_id signalp
```
This command search for the `signalp` tool through the Bio.Tools API, and transforms it into RDF. For now, the semantic alignment is straightforward and not consistent with state of the art ontologies and controlled vocabularies. This should addressed in a near future. 

```
python src/biotools_rdfizer.py --test
```
This command dumps only 10 entries into RDF in a file located in the current directory. 

```
python src/biotools_rdfizer.py --dump
```
This command dumps all Bio.Tools content in a file located in the current directory. 
