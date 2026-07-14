#> xpplate:_/sc/enable
# @ ENABLE
scoreboard players reset *disabled _xpplate

execute as @e[type=marker, tag=xpplate.xp_plate] at @s run function xpplate:_/main/plate/on_pack_enable
