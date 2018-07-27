## General info
This directory contains only the script and .ksy files for the wonderland game- 
## Associations between the ksy file and file in wonderland directory
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
