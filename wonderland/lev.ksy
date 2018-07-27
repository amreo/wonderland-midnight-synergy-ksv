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
  - id: sign_messages
    type: string
    repeat: expr
    repeat-expr: 5
types:
  string:
    seq:
      - id: string_length
        type: u4
      - id: string
        type: str
        size: string_length
        encoding: ascii
      
enums:
  tile:
    0: void
    100: floor
    200: wall_0
    201: wall_1
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
    600: floor_cracked_0
    601: floor_cracked_1
    602: floor_cracked_2
    603: floor_cracked_3
    605: floor_cracked_5
    700: electro_0
    701: electro_1
    702: electro_2
    703: electro_3
    800: cannon_up_0
    801: cannon_up_1
    802: cannon_up_2
    803: cannon_up_3 # Up => faced to up
    804: cannon_right_0 # Right => faced to right
    805: cannon_right_1
    806: cannon_right_2
    807: cannon_right_3  
    808: cannon_down_0 # Down => faced to down
    809: cannon_down_1
    810: cannon_down_2
    811: cannon_down_3
    812: cannon_left_0 # Left => faced to left
    813: cannon_left_1
    814: cannon_left_2
    815: cannon_left_3
    900: lava
    1000: gate_exit_horizontal
    1001: gate_exit_vertical
    1002: gate_violet_horizontal
    1003: gate_violet_vertical
    1004: gate_yellow_horizontal
    1005: gate_yellow_vertical
    1006: gate_green_horintal
    1007: gate_green_vertical
    1008: gate_indigo_horizontal
    1009: gate_indigo_vertical
    1101: button_circle_conveyor
    1102: button_timer_conveyor
    1103: button_square_violet
    1104: button_circle_violet
    1105: button_timer_violet
    1106: button_square_yellow
    1107: button_circle_yellow
    1108: button_timed_yellow
    1109: button_square_green
    1110: button_circle_green
    1111: button_timer_green # This is strange, square-timer-square. I bet it was square
    1112: button_square_indigo
    1113: button_circle_indigo
    1114: button_timer_indigo
    1200: teleport_red
    1201: teleport_yellow
    1202: teleport_green
    1203: teleport_blue
    1300: sign_0
    1301: sign_1
    1302: sign_2
    1303: sign_3
    1304: sign_4
  object: 
    0: nothing
    1: stinky
    2: loof
    3: box_wooden
    4: box_steel
    5: exit_rainbow 
    6: coin_rainbow
    7: enemy_coily
    8: enemy_zbot_0
    9: enemy_zbot_1
    10: enemy_zbot_2
    11: enemy_zbot_3
    12: enemy_zbot_4
    13: enemy_zbot_5
    14: enemy_zbot_6
    15: enemy_zbot_7
    16: enemy_kaboom_0
    17: enemy_kaboom_1
    18: enemy_kaboom_2
    19: enemy_kaboom_3
    20: enemy_kaboom_4
    21: enemy_kaboom_5
    22: enemy_kaboom_6
    23: enemy_kaboom_7
    25: coin_bonus
    26: fish
    27: unknown #Maybe the rain?
    28: pillar
    29: cone_0
    30: cone_1 # I think it is a cone
  theme: 
    0: cave
    1: sand
    2: wood
    3: ice
    4: castle
    5: jade
  border_type: 
    0: void
    1: infinity_tower
    2: infinity_diagonal_wall
    3: star
    4: infinity_wall
    5: water
    6: lava
