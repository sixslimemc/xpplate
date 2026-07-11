#> xpplate:_/main/plate/active/glitter
#--------------------
# ./etick
#--------------------
execute unless score @s _xpplate.glitter_timer matches 7.. run return 0

scoreboard players set @s _xpplate.glitter_timer 0

particle instant_effect ~ ~0.03 ~ 0.15 0 0.15 0 1 normal