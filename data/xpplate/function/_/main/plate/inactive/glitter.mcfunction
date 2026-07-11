#> xpplate:_/main/plate/inactive/glitter
#--------------------
# ./etick
#--------------------
execute unless score @s _xpplate.glitter_timer matches 2.. run return 0

scoreboard players set @s _xpplate.glitter_timer 0

particle composter ~ ~0.03 ~ 0.3 0 0.3 0 1

# particle instant_effect{color:16777130} ~ ~0.02 ~ 0 0 0 0 1 normal