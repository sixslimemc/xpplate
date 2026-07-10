#> xpplate:_/main/plate/active/user/withdrawal
#--------------------
# ./using
#--------------------

# TODO: sfx
execute if score *config.sounds.transfer _xpplate matches 1 run playsound entity.zombie.infect block @a ~ ~ ~ 0.3 1.8

execute if score *active.stored_xp _xpplate matches ..0 run return 0

# clamp *x to *.stored_xp
scoreboard players set *y _xpplate -1
scoreboard players operation *x _xpplate = *active.rate _xpplate
scoreboard players operation *x _xpplate *= *y _xpplate
execute if score *x _xpplate > *active.stored_xp _xpplate run scoreboard players operation *x _xpplate = *active.stored_xp _xpplate

scoreboard players operation *active.stored_xp _xpplate -= *x _xpplate

execute store result storage xpplate:_ x.macro.amount int 1 run scoreboard players get *x _xpplate
function xpplate:_/main/plate/active/user/withdrawal.1 with storage xpplate:_ x.macro
