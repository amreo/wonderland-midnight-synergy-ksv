meta:
  id: wonderland_lev
  file-extension: .lev
  endian: le
seq:
  - id: magic
    contents: 
      - 0x18
      - 0x00
      - 0x00
      - 0x00
      - Stinky & Loof Level File
  - id: filename_size
    type: u4
  - id: filename
    type: str
    encoding: ascii
    size: filename_size
  - id: level_name_size
    type: u4
  - id: level_name
    type: str
    encoding: ascii
    size: level_name_size
  - id: time_seconds
    type: u4
  - id: theme
    type: u4
    enum: theme
  - id: border_type
    type: u4
    enum: border_type
  - id: level_width
    type: u4
  - id: level_height
    type: u4
  - id: tiles
    type: u4
    repeat: expr
    repeat-expr: level_width*level_height
    enum: tile
  - id: objects
    type: u4
    repeat: expr
    repeat-expr: level_width*level_height
    enum: object
  - id: unknown2
    contents: [ 0x00, 0x00, 0x00, 0x00, 0x00 ]
enums:
  tile:
    0: void
    100: floor
    200: wall
    201: wall
    300: water
    400: ice
    401: ice_down_right
    402: ice_down_left
    403: ice_up_left
    404: ice_up_right
    500: conveyor_belt_up
    501: conveyor_belt_right
    502: conveyor_belt_down
    503: conveyor_belt_left
    600: floor_cracked
    700: electro
    701: electro
    702: electro
    703: electro
    800: cannon_up
    801: cannon_up
    808: cannon_down
    809: cannon_down
    810: cannon_down
    1000: gate_exit_horizontal
    1001: gate_exit_vertical
    1003: gate_violet_vertical
    1005: gate_yellow_vertical
    1007: gate_green_vertical
    1009: gate_indigo
    1103: button_square_violet
    1104: button_circle_violet
    1105: button_timer_violet
    1107: button_circle_yellow
    1109: button_square_green
    1111: button_timer_green # This is strange, square-timer-square. I bet it was square
    1112: button_square_indigo
    1200: teleport_red
    1201: teleport_yellow
    1202: teleport_green
    1203: teleport_blue
  object: 
    0: nothing
    1: stinky
    2: loof
    3: box_wooden
    5: exit_rainbow 
    6: coin_rainbow
    7: enemy_coily
    8: enemy_zbot
    25: coin_bonus
    26: fish
  theme: 
    2: classic
    3: ice
    5: jade
  border_type: 
    0: void
    1: infinity_tower
    2: infinity_wall
    5: water
    6: lava
