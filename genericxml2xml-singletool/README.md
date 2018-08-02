# genericxml2xml-singletool
Adapters for converting bio.tools "framework" XML (i.e. format supported out-of-the-box by the framework used by [bio.tools](https://bio.tools)) to [biotoolsSchema](https://github.com/bio-tools/biotoolsSchema/) XML.

This directory contains transforms that work on an input file containing a single tool, which does not have the ```<list><list-item>``` elements immediately following the ```root``` element.