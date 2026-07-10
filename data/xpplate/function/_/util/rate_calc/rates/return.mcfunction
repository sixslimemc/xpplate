# UTIL > xpplate :_/util/ rate_calc
# rates/return
#--------------------
# ./each
#--------------------

execute if score *rate_calc.is_negative _xpplate matches 1 run scoreboard players add *rate_calc.index _xpplate 1

execute if score *rate_calc.is_negative _xpplate matches 0 store result storage xpplate:_/out rate_calc.segment_index int 1 run scoreboard players get *rate_calc.index _xpplate
execute if score *rate_calc.is_negative _xpplate matches 1 store result storage xpplate:_/out rate_calc.segment_index int -1 run scoreboard players get *rate_calc.index _xpplate

execute if score *rate_calc.is_negative _xpplate matches 0 store result storage xpplate:_/out rate_calc.rate int 1 run data get storage xpplate:_ u.rate_calc.rate
execute if score *rate_calc.is_negative _xpplate matches 1 store result storage xpplate:_/out rate_calc.rate int -1 run data get storage xpplate:_ u.rate_calc.rate
data modify storage xpplate:_/out rate_calc.rate set from storage xpplate:_ u.rate_calc.this_rate.rate

return 1