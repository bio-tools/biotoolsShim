# xml2genericxml-singletool
Adapters for converting [biotoolsSchema](https://github.com/bio-tools/biotoolsSchema/) XML to bio.tools "framework" XML (i.e. format supported out-of-the-box by the framework used by [bio.tools](https://bio.tools).)

This directory contains transforms that work on an input file containing a single tool, and generates an output file which does not have the ```<list><list-item>``` elements immediately following the ```root``` element.