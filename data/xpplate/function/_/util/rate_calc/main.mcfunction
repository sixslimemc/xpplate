#> xpplate :_/util/ rate_calc
#--------------------
# -> y_rot: number
#--------------------
# <- rate: int,
# <- segment_index: int,
#--------------------
# TODO: description
#--------------------
# 1.
#--------------------
# positive -> deposit
# negative -> withdrawal
# (applies to both >rate< and >segment index<)

data modify storage xpplate:_/out rate_calc set value {rate:0, segment_index:0}

execute store result score *rate_calc.rot _xpplate run data get storage xpplate:_/in rate_calc.y_rot 1000
execute store success score *rate_calc.is_negative _xpplate if score *rate_calc.rot _xpplate matches ..-1
scoreboard players set *x _xpplate -1
execute if score *rate_calc.is_negative _xpplate matches 1 run scoreboard players operation *rate_calc.rot _xpplate *= *x _xpplate
scoreboard players set *x _xpplate 1000
scoreboard players operation *rate_calc.rot _xpplate /= *x _xpplate
execute if score *rate_calc.rot _xpplate matches 90.. run scoreboard players set *rate_calc.rot _xpplate 89

scoreboard players operation *rate_calc.index _xpplate = *config.transfer_rates.count _xpplate
scoreboard players set *rate_calc.threshold _xpplate 90
data modify storage xpplate:_ u.rate_calc.rates set from storage xpplate:_ config.transfer_rates
execute if data storage xpplate:_ u.rate_calc.rates[0] run function xpplate:_/util/rate_calc/rates/each

data remove storage xpplate:_ u.rate_calc
data remove storage xpplate:_/in rate_calc
scoreboard players reset *rate_calc.rot _xpplate
scoreboard players reset *rate_calc.index _xpplate
scoreboard players reset *rate_calc.threshold _xpplate
scoreboard players reset *rate_calc.is_negative _xpplate

return 1