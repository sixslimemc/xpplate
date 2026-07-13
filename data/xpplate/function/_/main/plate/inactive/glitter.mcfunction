#> xpplate:_/main/plate/inactive/glitter
#--------------------
# ./etick
#--------------------
execute unless score @s _xpplate.glitter_timer matches 4.. run return 0

scoreboard players set @s _xpplate.glitter_timer 0

particle instant_effect{color:15660945} ~ ~0.03 ~ 0 0 0 0 1 normal

