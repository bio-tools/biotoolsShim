# xml2genericxml-singletool (for [biotoolsSchema 3.3.0](https://github.com/bio-tools/biotoolsSchema/tree/master/versions/biotools-3.3.0))
Adapters for converting [biotoolsSchema](https://github.com/bio-tools/biotoolsSchema/) XML to bio.tools "framework" XML (i.e. format supported out-of-the-box by the framework used by [bio.tools](https://bio.tools).)

This version works on an input file containing a single tool, and generates an output file which does not have the ```<list><list-item>``` elements immediately following the ```root``` element.

File | Description
---- | -----------
biotools-3.3.0.xsd | biotoolsSchema XML Schema (1)
biotools-3.3.0_framework_singletool.xsd | XML Schema for framework XML
biotoolsSchema_3.3.0_XML_to_framework_XML.html | Documentation for transform
biotoolsSchema_3.3.0_XML_to_framework_XML.mfd | Altova MapForce project file
biotoolsSchema_3.3.0_XML_to_framework_XML_xslt1.0.xslt | Transform in XSLT 1.0 
biotoolsSchema_3.3.0_XML_to_framework_XML_xslt2.0.xslt | Transform in XSLT 2.0 
DoTransformXSLT1.0.bat | Script for running XSLT 1.0 transform
DoTransformXSLT2.0.bat | Script for running XSLT 2.0 transform
input.xml | Example script input 
output.xml | Example script output (2)

(1) identical to [biotools-3.3.0.xsd](https://github.com/bio-tools/biotoolsSchema/blob/master/versions/biotools-3.3.0/biotools-3.3.0.xsd)

(2) same format as [biotools-3.3.0.xml](https://github.com/bio-tools/biotoolsSchema/blob/master/versions/biotools-3.3.0/example_files/biotools-3.3.0.xml)