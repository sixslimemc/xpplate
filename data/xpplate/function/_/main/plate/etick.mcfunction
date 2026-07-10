#> xpplate:_/main/plate/etick
#--------------------
# _/main/tick
#--------------------

execute unless block ~ ~ ~ minecraft:light_weighted_pressure_plate run return run function xpplate:_/main/plate/destroy/do

setblock ~ ~ ~ minecraft:light_weighted_pressure_plate[power=1]

execute if entity @s[tag=xpplate.in_use] run return run function xpplate:_/main/plate/active/etick
return run function xpplate:_/main/plate/inactive/etick