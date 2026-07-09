#> xpplate:_/main/plate/floormake/condition
#--------------------
# @ floormake : <ingredient condition>
#--------------------

execute unless block ~ ~ ~ minecraft:light_weighted_pressure_plate run return 0

execute align xyz positioned ~0.5 ~ ~0.5 if entity @n[type=marker, tag=xpplate.xp_plate, distance=..0.5] run return 0

return 1