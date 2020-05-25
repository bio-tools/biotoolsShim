@echo off

RaptorXML xslt --xslt-version=2 --input="E:\repos\GitHub\biotoolsShim\xml2genericxml-singletool\versions\biotools-3.3.0\input.xml" --output="E:\repos\GitHub\biotoolsShim\xml2genericxml-singletool\versions\biotools-3.3.0\output.xml" --xml-validation-error-as-warning=true %* "MappingMapTobiotools-3_3_0_framework_singletool.xslt"
IF ERRORLEVEL 1 EXIT/B %ERRORLEVEL%
