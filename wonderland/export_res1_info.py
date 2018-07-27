#!/usr/bin/env python3
from wonderland_res1 import WonderlandRes1
import sys
res = WonderlandRes1.from_file(sys.argv[1])
for entry in res.file_entries:
    print("{},{},{}".format(entry.filename, entry.offset, entry.size))