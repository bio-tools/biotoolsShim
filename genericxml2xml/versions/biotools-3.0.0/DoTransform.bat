@echo off

RaptorXML xslt --xslt-version=2 --input="input.xml" --output="output.xml" --xml-validation-error-as-warning=true %* "MappingMapTobiotools-3_0_0.xslt"
IF ERRORLEVEL 1 EXIT/B %ERRORLEVEL%
