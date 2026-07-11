#> xpplate:_/main/plate/active/user/withdrawal
#--------------------
# ./using
#--------------------

execute if score *active.stored_xp _xpplate matches ..0 run return 0

execute if score *config.sounds.transfer _xpplate matches 1 run playsound entity.allay.ambient_without_item block @a ~ ~ ~ 0.03 2

# clamp *x to *.stored_xp
scoreboard players set *y _xpplate -1
scoreboard players operation *x _xpplate = *active.rate _xpplate
scoreboard players operation *x _xpplate *= *y _xpplate
execute if score *x _xpplate > *active.stored_xp _xpplate run scoreboard players operation *x _xpplate = *active.stored_xp _xpplate

scoreboard players operation *active.xp_transfer _xpplate -= *x _xpplate

execute store result storage xpplate:_ x.macro.amount int 1 run scoreboard players get *x _xpplate
function xpplate:_/main/plate/active/user/withdrawal.1 with storage xpplate:_ x.macro
