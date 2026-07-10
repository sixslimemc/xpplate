# UTIL > xpplate :_/util/ rate_calc
# rates/return
#--------------------
# ./each
#--------------------

execute store result storage xpplate:_/out rate_calc.segment_index int 1 run scoreboard players get *rate_calc.index _xpplate

data modify storage xpplate:_/out rate_calc.rate set from storage xpplate:_ u.rate_calc.this_rate.rate