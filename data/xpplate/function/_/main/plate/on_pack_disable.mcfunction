# xpplate:_/main/plate/on_pack_disable
#--------------------
# _/sc/disable
#--------------------

execute if entity @s[tag=xpplate.in_use] run function xpplate:_/main/plate/active/deactivate with entity @s data.xpplate.user

setblock ~ ~ ~ light_weighted_pressure_plate[power=0]