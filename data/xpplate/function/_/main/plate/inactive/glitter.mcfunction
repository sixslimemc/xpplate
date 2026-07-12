#> xpplate:_/main/plate/inactive/glitter
#--------------------
# ./etick
#--------------------
execute unless score @s _xpplate.glitter_timer matches 3.. run return 0

scoreboard players set @s _xpplate.glitter_timer 0

particle composter ~ ~0.04 ~ 0.3 0.01 0.3 0 1
