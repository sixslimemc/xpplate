#> xpplate:_/main/plate/active/user/deposit
#--------------------
# ./using
#--------------------

execute store result storage xpplate:_/in take_xp.amount int 1 run scoreboard players get *active.rate _xpplate
execute store result score *x _xpplate run function xpplate:_/util/take_xp/main

execute if score *x _xpplate matches ..0 run return 0

scoreboard players operation *active.xp_transfer _xpplate += *x _xpplate

execute if score *config.sounds.transfer _xpplate matches 1 run playsound entity.allay.ambient_with_item block @a ~ ~ ~ 0.08 2
