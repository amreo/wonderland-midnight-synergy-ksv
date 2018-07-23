# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO


if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class WonderlandLev(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.magic = self._io.ensure_fixed_contents(b"\x18\x00\x00\x00\x53\x74\x69\x6E\x6B\x79\x20\x26\x20\x4C\x6F\x6F\x66\x20\x4C\x65\x76\x65\x6C\x20\x46\x69\x6C\x65")
        self.filename_size = self._io.read_u4le()
        self.filename = (self._io.read_bytes(self.filename_size)).decode(u"ascii")
        self.level_name_size = self._io.read_u4le()
        self.level_name = (self._io.read_bytes(self.level_name_size)).decode(u"ascii")
        self.unknown1 = self._io.read_u4le()
        self.unknown2 = self._io.read_u4le()
        self.unknown3 = self._io.read_u4le()
        self.level_width = self._io.read_u4le()
        self.level_height = self._io.read_u4le()
        self.unknown = []
        i = 0
        while not self._io.is_eof():
            self.unknown.append(self._io.read_u1())
            i += 1



