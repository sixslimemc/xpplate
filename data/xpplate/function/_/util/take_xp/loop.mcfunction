#> xpplate :_/util/ take_xp
# main.1

execute if score *take_xp.amount _xpplate matches ..0 run return 0

execute store result score *take_xp.ppoints _xpplate run xp query @s points

# points > amount needed:
execute if score *take_xp.amount _xpplate <= *take_xp.ppoints _xpplate run return run scoreboard players operation *take_xp.taking _xpplate += *take_xp.amount _xpplate

# levels == 0:
execute if score *take_xp.plevels _xpplate matches ..0 run return run scoreboard players operation *take_xp.taking _xpplate += *take_xp.ppoints _xpplate

# ~ levels left to take, but not enough points:

scoreboard players operation *x _xpplate = *take_xp.ppoints _xpplate
scoreboard players add *x _xpplate 1
scoreboard players operation *take_xp.taking _xpplate += *x _xpplate
scoreboard players operation *take_xp.amount _xpplate -= *x _xpplate
scoreboard players operation *take_xp.loop_took _xpplate += *x _xpplate

execute store result storage xpplate:_ x.macro.amount int 1 run scoreboard players get *x _xpplate
function xpplate:_/util/take_xp/take with storage xpplate:_ x.macro

xp add @s -1 points

function xpplate:_/util/take_xp/loop