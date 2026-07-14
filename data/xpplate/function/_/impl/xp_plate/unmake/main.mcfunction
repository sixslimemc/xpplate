# IMPL > xpplate : xp_plate/unmake
# main

execute unless entity @n[type=marker, tag=xpplate.xp_plate, distance=..0.1] run return 0

execute as @n[type=marker, tag=xpplate.xp_plate, distance=..0.1] at @n run function xpplate:_/main/plate/destroy/do

execute if block ~ ~ ~ light_weighted_pressure_plate run setblock ~ ~ ~ light_weighted_pressure_plate[power=0]

return 1