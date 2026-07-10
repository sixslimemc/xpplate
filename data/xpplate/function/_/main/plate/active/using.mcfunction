#> xpplate:_/main/plate/active/etick
#--------------------
# ../etick
#--------------------

function xpplate:_/main/plate/active/tag_user with entity @s data.xpplate.user
execute unless entity @p[tag=_xpplate.user, predicate=xpplate:_/valid_user, distance=..0.6] run return run function xpplate:_/main/plate/active/deactivate

execute store success score *active.using _xpplate if entity @p[tag=_xpplate.user, predicate=xpplate:_/sneak]

# rate calc:
data modify storage xpplate:_/in rate_calc.y_rot set from entity @p[tag=_xpplate.user] Rotation[1]
function xpplate:_/util/rate_calc/main
data modify storage xpplate:_ t.active.calc set from storage xpplate:_/out rate_calc

# show text:
execute store result storage xpplate:_/in plate_text.stored_xp int 1 run scoreboard players get @s xpplate.stored_xp
execute store success storage xpplate:_/in plate_text.activated byte 1 run scoreboard players get *active.using _xpplate
data modify storage xpplate:_/in plate_text.segment_index set from storage xpplate:_ t.active.calc.segment_index
function xpplate:_/util/plate_text/main
title @s actionbar {storage:"xpplate:_/out", nbt:"plate_text.result", interpret:true}



data remove storage xpplate:_ t.active
scoreboard players reset *active.using _xpplate