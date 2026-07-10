#> xpplate:_/main/plate/active/etick
#--------------------
# ../etick
#--------------------

scoreboard players set *active.xp_transfer _xpplate 0
scoreboard players set *active.valid_user _xpplate 0
scoreboard players operation *active.stored_xp _xpplate = @s xpplate.stored_xp
function xpplate:_/main/plate/active/run_user with entity @s data.xpplate.user
execute if score *active.valid_user _xpplate matches 0 run return run function xpplate:_/main/plate/active/deactivate with entity @s data.xpplate.user

data remove storage xpplate:_ t.active
scoreboard players reset *active.using _xpplate
scoreboard players reset *active.valid_user _xpplate
scoreboard players reset *active.xp_transfer _xpplate