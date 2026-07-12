#> xpplate:_/main/tick
#--------------------
# _/entrypoints/main
#--------------------
schedule function xpplate:_/main/tick 1t

execute as @a[scores={_xpplate.join=1..}] at @s run function xpplate:_/main/player/on_rejoin

execute as @e[type=marker, tag=xpplate.xp_plate] at @s run function xpplate:_/main/plate/etick
