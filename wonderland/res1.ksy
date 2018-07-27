meta:
  id: wonderland_res1
  file-extension: .dat
  endian: le
seq:
  - id: file_entries
    type: file_entry
    repeat: eos
types:
  file_entry: 
    seq:
      - id: filename_size
        type: u4
      - id: filename
        type: str
        size: filename_size
        encoding: ascii
      - id: offset
        type: u4
      - id: size
        type: u4
 
