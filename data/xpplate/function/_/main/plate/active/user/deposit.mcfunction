#> xpplate:_/main/plate/active/user/deposit
#--------------------
# ./using
#--------------------

execute store result storage xpplate:_/in take_xp.amount int -1 run scoreboard players get *active.rate _xpplate
execute store result score *x _xpplate run function xpplate:_/util/take_xp/main

scoreboard players operation *active.stored_xp _xpplate += *x _xpplate

# TODO: sfx
execute if score *config.sounds.transfer _xpplate matches 1 run playsound entity.zombie.infect block @a ~ ~ ~ 0.3 2