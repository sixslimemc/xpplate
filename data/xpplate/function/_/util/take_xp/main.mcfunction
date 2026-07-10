#> xpplate :_/util/ take_xp
#--------------------
# -> amount: int
#--------------------
# .
#--------------------
# TODO: description
#--------------------
# 0.. amount taken.
#--------------------

scoreboard players set *take_xp.taking _xpplate 0
scoreboard players set *take_xp.loop_took _xpplate 0
execute store result score *take_xp.plevels _xpplate run xp query @s levels
execute store result score *take_xp.amount _xpplate run data get storage xpplate:_/in take_xp.amount
function xpplate:_/util/take_xp/loop

scoreboard players operation *x _xpplate = *take_xp.taking _xpplate
scoreboard players operation *x _xpplate -= *take_xp.loop_took _xpplate
execute store result storage xpplate:_ x.macro.amount int 1 run scoreboard players get *x _xpplate
execute if score *x _xpplate matches 1.. run function xpplate:_/util/take_xp/take with storage xpplate:_ x.macro

scoreboard players operation *x _xpplate = take_xp.taking _xpplate

data remove storage xpplate:_ u.take_xp
data remove storage xpplate:_/in take_xp
scoreboard players reset *take_xp.amount _xpplate
scoreboard players reset *take_xp.ppoints _xpplate
scoreboard players reset *take_xp.plevels _xpplate
scoreboard players reset *take_xp.taking _xpplate
scoreboard players reset *take_xp.loop_took _xpplate

return run scoreboard players get *x _xpplate