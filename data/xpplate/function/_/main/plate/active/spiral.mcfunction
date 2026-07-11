#> xpplate:_/main/plate/active/spiral
#--------------------
# ./etick
#--------------------

execute if score *active.using _xpplate matches 1 unless score *active.xp_transfer _xpplate matches 0 run return run function xpplate:_/main/plate/active/spiral_active

tp @s ~ ~ ~ ~50 ~

particle instant_effect{color:16777130} ^ ^0.02 ^0.64 0 0 0 0 1 normal
particle instant_effect{color:16777130} ^ ^0.02 ^-0.64 0 0 0 0 1 normal