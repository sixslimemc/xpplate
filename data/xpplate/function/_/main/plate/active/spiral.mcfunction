#> xpplate:_/main/plate/active/spiral
#--------------------
# ./etick
#--------------------

execute if score *active.using _xpplate matches 1 unless score *active.xp_transfer _xpplate matches 0 run return run function xpplate:_/main/plate/active/spiral_active

tp @s ~ ~ ~ ~5 ~

# particle instant_effect{color:15660945} ~ ~0.03 ~ 0.2 0 0.2 0 1 normal

# particle instant_effect{color:15726497} ^ ^0.02 ^0.64 0 0 0 0 1 normal
particle instant_effect ^ ^ ^0.65 0 0 0 0 1 normal
particle instant_effect ^ ^ ^-0.65 0 0 0 0 1 normal