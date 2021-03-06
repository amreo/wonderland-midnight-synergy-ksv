meta:
  id: wonderland_player_save_file
  file-extension: .pla
  endian: le
seq:
  - id: magic
    contents:
      - 0x19
      - 0x00
      - 0x00
      - 0x00 
      - Stinky & Loof Player File
  - id: player_name_length
    type: u4
  - id: player_name
    type: str
    encoding: ascii
    size: player_name_length
  - id: zero
    contents: [0x00, 0x00, 0x00, 0x00]
  - id: completed_level_numbers
    type: u4
  - id: total_score_point
    type: u4
  - id: level_entries
    type: level_entry
    repeat: eos
    
types:
  level_entry:
    seq:
      - id: level_score
        type: u4
