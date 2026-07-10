#> xpplate:_/main/plate/main
#--------------------
# _/main/tick
#--------------------

execute unless block ~ ~ ~ minecraft:light_weighted_pressure_plate run return run function xpplate:_/main/plate/destory/do

execute unless block ~ ~ ~ minecraft:light_weighted_pressure_plate[power=0] if entity @p[gamemode=!spectator, distance=0.7, predicate=xpplate:_/on_ground] run function xpplate:_/main/plate/active/trigger