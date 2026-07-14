# IMPL > xpplate : xp_plate/unmake
# main

execute unless entity @n[type=marker, tag=xpplate.xp_plate, distance=..0.1] run return 0

execute as @n[type=marker, tag=xpplate.xp_plate, distance=..0.1] at @n run function xpplate:_/main/plate/destroy/do

return 1