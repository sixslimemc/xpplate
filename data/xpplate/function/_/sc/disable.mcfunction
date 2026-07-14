#> xpplate:_/sc/disable
# @ DISABLE
scoreboard players set *disabled _xpplate 1

execute as @e[type=marker, tag=xpplate.xp_plate] at @s run function xpplate:_/main/plate/on_pack_disable