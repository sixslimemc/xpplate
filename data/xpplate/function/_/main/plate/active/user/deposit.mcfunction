#> xpplate:_/main/plate/active/user/deposit
#--------------------
# ./using
#--------------------

execute store result storage xpplate:_/in take_xp.amount int 1 run scoreboard players get *active.rate _xpplate
execute store result score *x _xpplate run function xpplate:_/util/take_xp/main

scoreboard players operation *active.xp_transfer _xpplate += *x _xpplate
