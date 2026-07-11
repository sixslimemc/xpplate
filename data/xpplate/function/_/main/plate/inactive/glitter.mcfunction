#> xpplate:_/main/plate/inactive/glitter
#--------------------
# ./etick
#--------------------
execute unless score @s _xpplate.glitter_timer matches 2.. run return 0

scoreboard players set @s _xpplate.glitter_timer 0

particle instant_effect ~ ~0.02 ~ 0 0 0 0 1 normal
particle composter ~ ~0.05 ~ 0.25 0.01 0.25 1 1 normal