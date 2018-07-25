# wonderland-midnight-synergy-ksv
In this repository there are some kaitai struct files useful for unpacking and parsing the files used in the wonderland game.
The .KSY files contain the information about the format of the files.
## Associations between the ksy file and wonderland file (in wonderland directory)
* `options.ksy` => `options.cfg`
* `player-save-file.ksy` => `players/*.pla`
* `lev.ksy` => `*.lev`, [unpacked] `levels/*.lev`
* `res1.ksy` => `res1.dat`
## Scripts
* `export_level_info.py </path/to/res1.dat>` export the list (`<filename>`, `<offset>`, `<size>`) of the files packed in the `res23.dat`. 
* `extract_all_contents.py </path/to/res1.dat> </path/to/res23.dat>` extract all files in res23.dat in the current directory.
## NOTE:
* The KSY should be compiled with kaitai struct compiler.
    * `kaitai-struct-compiler <ksyfile.ksy> --target python`
* The others file are clear. The *.3ds files are 3D mesh and they can be imported with blender. The *.md2 file (magic number = IDP2) are file containing the keyframed 3D mesh.
