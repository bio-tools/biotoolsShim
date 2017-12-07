@echo off

RaptorXML xslt --xslt-version=1 --input="input.xml" --output="output.xml" %* "framework_XML_to_biotoolsSchema_3.0.0_XML_xslt1.0.xslt"
IF ERRORLEVEL 1 EXIT/B %ERRORLEVEL%
