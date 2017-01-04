@echo off

RaptorXML xslt --xslt-version=2 --input="input.xml" --output="biotools-2.0.0_framework.xml" %* "MappingMapTobiotools-2_0_0_framework.xslt"
IF ERRORLEVEL 1 EXIT/B %ERRORLEVEL%
