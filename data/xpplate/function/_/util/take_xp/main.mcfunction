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
execute store result score *take_xp.plevels _xpplate run xp query @s levels
function xpplate:_/util/take_xp/loop


execute store result storage xpplate:_ x.macro.amount int 1 run scoreboard players get *take_xp.taking _xpplate
execute store result score *x _xpplate run function xpplate:_/util/take_xp/take with storage xpplate:_ x.macro

data remove storage xpplate:_ u.take_xp
data remove storage xpplate:_/in take_xp
scoreboard players reset *take_xp.amount _xpplate
scoreboard players reset *take_xp.ppoints _xpplate
scoreboard players reset *take_xp.plevels _xpplate
scoreboard players reset *take_xp.taking _xpplate

return run scoreboard players get *x _xpplate