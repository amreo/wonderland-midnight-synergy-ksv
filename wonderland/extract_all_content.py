#!/usr/bin/env python3
from wonderland_res1 import WonderlandRes1
from sys import argv
from os import mkdir
index = WonderlandRes1.from_file(argv[1])
data = open(argv[2], "rb")
mkdir('sound')
mkdir('graphics')
mkdir('levels')
for entry in index.file_entries:
     print("{},{},{}".format(entry.filename, entry.offset, entry.size))
     data.seek(entry.offset)
     content = data.read(entry.size)
     out = open(str(entry.filename.replace("\\", "/")), "wb")
     out.write(content)
     out.close()
