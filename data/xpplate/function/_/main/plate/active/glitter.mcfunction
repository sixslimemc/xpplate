#> xpplate:_/main/plate/inactive/active
#--------------------
# ./etick
#--------------------
execute unless score @s _xpplate.glitter_timer matches 2.. run return 0

scoreboard players set @s _xpplate.glitter_timer 0

particle instant_effect{color:15660945} ~ ~0.03 ~ 0.2 0 0.2 0 1 normal
execute if score *active.xp_transfer _xpplate matches ..-1 run particle instant_effect{color:16709553} ~ ~0.03 ~ 0.2 0 0.2 0 2 normal
execute if score *active.xp_transfer _xpplate matches 1.. run particle instant_effect{color:15632571} ~ ~0.03 ~ 0.2 0 0.2 0 2 normal

# particle instant_effect{color:16777130} ~ ~0.02 ~ 0 0 0 0 1 normal