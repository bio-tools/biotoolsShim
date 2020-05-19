@echo off

RaptorXML xslt --xslt-version=2 --input="input.xml" --output="output.xml" --xml-validation-error-as-warning=true %* "MappingMapTobiotools_3_3_0.xslt"
IF ERRORLEVEL 1 EXIT/B %ERRORLEVEL%
