#> xpplate:_/main/plate/inactive/glitter
#--------------------
# ./etick
#--------------------
execute unless score @s _xpplate.glitter_timer matches 1.. run return 0

scoreboard players set @s _xpplate.glitter_timer 0

particle minecraft:composter ~ ~0.05 ~ 0.2 0.01 0.2 1 1 normal