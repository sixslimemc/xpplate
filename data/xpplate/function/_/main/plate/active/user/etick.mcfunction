#> xpplate:_/main/plate/active/user/etick
#--------------------
# ../run_user
#--------------------
execute if entity @s[distance=..0.6, predicate=xpplate:_/valid_user] run scoreboard players set *active.valid_user _xpplate 1
execute if score *active.valid_user _xpplate matches 0 run return 0

execute store success score *active.using _xpplate if predicate xpplate:_/sneak

# rate calc:
data modify storage xpplate:_/in rate_calc.y_rot set from entity @s Rotation[1]
function xpplate:_/util/rate_calc/main
execute store result score *active.rate _xpplate run data get storage xpplate:_/out rate_calc.rate
execute store result score *active.segment_index _xpplate run data get storage xpplate:_/out rate_calc.segment_index

# show text:
execute store result storage xpplate:_/in plate_text.stored_xp int 1 run scoreboard players get *active.stored_xp _xpplate
execute store result storage xpplate:_/in plate_text.activated byte 1 run scoreboard players get *active.using _xpplate
execute store result storage xpplate:_/in plate_text.segment_index int 1 run scoreboard players get *active.segment_index _xpplate
function xpplate:_/util/plate_text/main
title @s actionbar {storage:"xpplate:_/out", nbt:"plate_text.result", interpret:true}

# using:
execute if score *active.using _xpplate matches 1 run function xpplate:_/main/plate/active/user/using