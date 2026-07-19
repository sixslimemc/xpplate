#> xpplate:_/main/plate/inactive/glitter
#--------------------
# ./etick
#--------------------
scoreboard players add @s _xpplate.glitter_timer 1
execute unless score @s _xpplate.glitter_timer matches 3.. run return 0

scoreboard players set @s _xpplate.glitter_timer 0

#particle instant_effect{color:13424497} ~ ~0.03 ~ 0.2 0 0.2 0 1 normal

particle composter ~ ~0.03 ~ 0.25 0.01 0.25 0 1 normal
