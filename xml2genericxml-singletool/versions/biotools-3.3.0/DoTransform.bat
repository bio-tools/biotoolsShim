@echo off

RaptorXML xslt --xslt-version=2 --input="../../../genericxml2xml-singletool/versions/biotools-3.3.0/output.xml" --output="../../../genericxml2xml-singletool/versions/biotools-3.3.0/input.xml" --xml-validation-error-as-warning=true %* "MappingMapTobiotools-3_3_0_framework_singletool.xslt"
IF ERRORLEVEL 1 EXIT/B %ERRORLEVEL%
