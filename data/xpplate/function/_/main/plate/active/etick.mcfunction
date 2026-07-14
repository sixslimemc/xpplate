#> xpplate:_/main/plate/active/etick
#--------------------
# ../etick
#--------------------

scoreboard players set *active.valid_user _xpplate 0
scoreboard players set *active.xp_transfer _xpplate 0
scoreboard players operation *active.stored_xp _xpplate = @s xpplate.stored_xp
function xpplate:_/main/plate/active/run_user with entity @s data.xpplate.user
execute if score *active.valid_user _xpplate matches 0 run return run function xpplate:_/main/plate/active/deactivate with entity @s data.xpplate.user

scoreboard players operation @s xpplate.stored_xp += *active.xp_transfer _xpplate

execute if score *active.xp_transfer _xpplate matches ..-1 run particle instant_effect{color:16709553} ~ ~0.03 ~ 0.2 0 0.2 0 2 normal
execute if score *active.xp_transfer _xpplate matches 1.. run particle instant_effect{color:15632571} ~ ~0.03 ~ 0.2 0 0.2 0 2 normal

execute if score *config.particles.active _xpplate matches 1 if score *active.xp_transfer _xpplate matches 0 run function xpplate:_/main/plate/active/glitter

data remove storage xpplate:_ t.active
scoreboard players reset *active.using _xpplate
scoreboard players reset *active.valid_user _xpplate
scoreboard players reset *active.segment_index _xpplate
scoreboard players reset *active.rate _xpplate
scoreboard players reset *active.xp_transfer _xpplate