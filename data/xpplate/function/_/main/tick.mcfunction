#> xpplate:_/main/tick
#--------------------
# _/entrypoints/main
#--------------------
schedule function xpplate:_/main/tick 1t

execute as @e[type=marker, tag=xpplate.xp_plate] at @s run function xpplate:_/main/plate/main