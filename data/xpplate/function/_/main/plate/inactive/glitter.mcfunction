#> xpplate:_/main/plate/inactive/glitter
#--------------------
# ./etick
#--------------------
execute unless score @s _xpplate.glitter_timer matches 6.. run return 0

scoreboard players set @s _xpplate.glitter_timer 0

particle instant_effect{color:13753457} ~ ~0.03 ~ 0 0 0 0 1 normal

