#!/usr/bin/env python3
from wonderland_lev import WonderlandLev
import sys
res = WonderlandLev.from_file(sys.argv[1])
for entry in res.unknown:
    print("{}".format(entry))