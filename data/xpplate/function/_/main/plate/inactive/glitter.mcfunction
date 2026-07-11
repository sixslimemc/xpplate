#> xpplate:_/main/plate/inactive/glitter
#--------------------
# ./etick
#--------------------
execute unless score @s _xpplate.glitter_timer matches 2.. run return 0

scoreboard players set @s _xpplate.glitter_timer 0

particle composter ~ ~0.03 ~ 0.2 0 0.2 1 1 normal