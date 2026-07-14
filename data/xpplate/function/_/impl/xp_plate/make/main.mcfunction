# IMPL > xpplate : xp_plate/make
# main

execute unless block ~ ~ ~ light_weighted_pressure_plate run return -1
execute if entity @n[type=marker,tag=xpplate.xp_plate, distance=..0.1] run return -2

execute summon marker run function xpplate:_/impl/xp_plate/make/spawn
