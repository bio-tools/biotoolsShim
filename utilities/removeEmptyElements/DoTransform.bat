@echo off

RaptorXML xslt --xslt-version=1 --input="input.xml" --output="output.xml" %* "removeEmptyElements.xslt"
IF ERRORLEVEL 1 EXIT/B %ERRORLEVEL%
