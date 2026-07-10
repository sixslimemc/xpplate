# UTIL > xpplate :_/util/ rate_calc
# rates/each
#--------------------
# ../main
#--------------------
scoreboard players remove *rate_calc.index _xpplate 1
data modify storage xpplate:_ u.rate_calc.this_rate set from storage xpplate:_ u.rate_calc.rates[-1]

execute store result score *x _xpplate run data get storage xpplate:_ u.rate_calc.this_rate.threshold_size
scoreboard players operation *rate_calc.threshold _xpplate -= *x _xpplate

execute if score *rate_calc.rot _xpplate >= *rate_calc.threshold _xpplate run return run function xpplate:_/util/rate_calc/rates/return

data remove storage xpplate:_ u.rate_calc.rates[-1]
execute if data storage xpplate:_ u.rate_calc.rates[0] run function xpplate:_/util/rate_calc/rates/each