meta:
  id: wonderland_options
  file-extension: .cfg
  endian: le
seq:
  - id: music_volume
    type: u4
    # 0x00 => no_music
    # 0x14 => low
    # 0x3c => medium
    # 0x64 => high
  - id: unknown1
    type: u4
  - id: level_detail
    type: u4
    # 0x01 -> low
    # 0x03 -> medium
    # 0x05 -> high
  - id: unknown2
    type: u4
  - id: unknown3
    type: u4
  - id: unknown4
    type: u4
  - id: language
    type: u4
    enum: language
  - id: time_limit
    type: u4
    enum: time_limit
  - id: world_progression_mode
    type: u4
    enum: world_progression_mode
enums:
  language:
    0: english
    1: german
    2: french
  time_limit:
    0: no_time_limit
    1: timed_mode
  world_progression_mode:
    0: normal_world_progression
    1: all_world_unlocked
