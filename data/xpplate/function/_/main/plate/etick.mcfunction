#> xpplate:_/main/plate/etick
#--------------------
# _/main/tick
#--------------------

execute unless block ~ ~ ~ minecraft:light_weighted_pressure_plate run return run function xpplate:_/main/plate/destroy/do

setblock ~ ~ ~ minecraft:light_weighted_pressure_plate[power=1]

execute if score *config.particles.glitter _xpplate matches 1 run scoreboard players add @s _xpplate.glitter_timer 1

execute if entity @s[tag=xpplate.in_use] run return run function xpplate:_/main/plate/active/etick
return run function xpplate:_/main/plate/inactive/etick