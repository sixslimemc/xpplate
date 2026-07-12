#> xpplate:_/main/plate/active/user/deposit
#--------------------
# ./using
#--------------------
scoreboard players operation *x _xpplate = *max_stored _xpplate
scoreboard players operation *x _xpplate -= *active.stored_xp _xpplate
execute if score *active.rate _xpplate > *x _xpplate run scoreboard players operation *active.rate _xpplate = *x _xpplate
execute if score *active.rate _xpplate matches ..0 run return 0

execute store result storage xpplate:_/in take_xp.amount int 1 run scoreboard players get *active.rate _xpplate
execute store result score *x _xpplate run function xpplate:_/util/take_xp/main

execute if score *x _xpplate matches ..0 run return 0

scoreboard players operation *active.xp_transfer _xpplate += *x _xpplate
