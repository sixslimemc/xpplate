#> xpplate:_/main/plate/inactive/active
#--------------------
# ./etick
#--------------------
execute unless score @s _xpplate.glitter_timer matches 3.. run return 0

scoreboard players set @s _xpplate.glitter_timer 0

particle composter ~ ~0.04 ~ 0.3 0.01 0.3 0 1

# particle instant_effect{color:16777130} ~ ~0.02 ~ 0 0 0 0 1 normal