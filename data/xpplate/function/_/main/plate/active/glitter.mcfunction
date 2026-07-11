#> xpplate:_/main/plate/active/glitter
#--------------------
# ./etick
#--------------------
execute unless score @s _xpplate.glitter_timer matches 3.. run return 0

scoreboard players set @s _xpplate.glitter_timer 0

particle composter ~ ~0.02 ~ 0.2 0 0.2 1 2 normal
