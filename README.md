B2UConverter-CLI
================

B2UConverter-CLI is a command-line interface for [B2Uconverter](https://github.com/myguidingstar/B2Uconverter/).

The script was heavily based on [PyODConverter](https://github.com/mirkonasato/pyodconverter) and, of course, B2Uconverter.

Usage
-----

B2UConverter-CLI requires LibreOffice/OpenOffice.org to be running as a service
and listening on port (by default) 2002; this can be achieved e.g. by starting
it from the command line as

    $ {PATH_TO_soffice} --headless --nofirststartwizard --accept="socket,host=localhost,port=2012;urp;StarOffice.Service"

where `{PATH_TO_soffice}` is often `/usr/lib64/libreoffice/program/soffice` or `/usr/lib/libreoffice/program/soffice`

The script expects exactly 2 parameters: an input and an output file names.
The document formats are inferred from the file extensions.

Since it uses the Python/UNO bridge, the script requires the UNO modules to be
already present in your Python installation.

on Linux:
```bash
$ git clone https://github.com/myguidingstar/pyodconverter.git
$ git submodule update
$ make
$ export PYTHONPATH="$PYTHONPATH:{PATH_TO_program}:$PWD"
$ python DocumentConverter.py test.odt test.pdf
```

where `{PATH_TO_program}` is often `/usr/lib64/libreoffice/program` or `/usr/lib/libreoffice/program`

If you want to write your own scripts in Python, B2UConverter-CLI can also act as
a Python module, exporting a DocumentConverter class with a very simple API.

```python
from DocumentConverter import DocumentConverter
DocumentConverter().convert("/path/to/some.doc", "/path/to/some.odt")
```
