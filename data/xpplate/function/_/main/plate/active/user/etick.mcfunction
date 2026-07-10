#> xpplate:_/main/plate/active/user/etick
#--------------------
# ../run_user
#--------------------
scoreboard players set *active.valid_user _xpplate 1

execute store success score *active.using _xpplate if predicate xpplate:_/sneak

# rate calc:
data modify storage xpplate:_/in rate_calc.y_rot set from entity @s Rotation[1]
function xpplate:_/util/rate_calc/main
data modify storage xpplate:_ t.active.calc set from storage xpplate:_/out rate_calc

# show text:
execute store result storage xpplate:_/in plate_text.stored_xp int 1 run scoreboard players get *active.stored_xp _xpplate
execute store success storage xpplate:_/in plate_text.activated byte 1 run scoreboard players get *active.using _xpplate
data modify storage xpplate:_/in plate_text.segment_index set from storage xpplate:_ t.active.calc.segment_index
function xpplate:_/util/plate_text/main

title @s actionbar {storage:"xpplate:_/out", nbt:"plate_text.result", interpret:true}
