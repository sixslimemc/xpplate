#> xpplate :_/util/ plate_text
#--------------------
# -> stored_xp: int
# -> segment_index: int
# -> activated: boolean
#--------------------
# <- result: Text
#--------------------
# TODO: description
#--------------------
# 1.
#--------------------

data modify storage xpplate:_/out plate_text set value {result:{}}

execute store success score *plate_text.is_activated _xpplate if data storage xpplate:_/in plate_text{activated:true}
execute store result score *plate_text.segments _xpplate run data get storage xpplate:_/in plate_text.segment_index
execute store success score *plate_text.is_negative _xpplate if score *plate_text.segments _xpplate matches ..-1
scoreboard players set *x _xpplate -1
execute if score *plate_text.is_negative _xpplate matches 1 run scoreboard players operation *plate_text.segments _xpplate *= *x _xpplate
execute if score *plate_text.is_negative _xpplate matches 0 run scoreboard players add *plate_text.segments _xpplate 1
scoreboard players operation *plate_text.blanks _xpplate = *config.transfer_rates.count _xpplate
scoreboard players operation *plate_text.blanks _xpplate -= *plate_text.segments _xpplate

data modify storage xpplate:_ u.plate_text.blanks set value {text:"", color:dark_gray, extra:[]}
data modify storage xpplate:_ u.plate_text.left set value {text:"", color:gray, extra:[]}
data modify storage xpplate:_ u.plate_text.right set value {text:"", color:gray, extra:[]}
data modify storage xpplate:_ u.plate_text.center set value {storage:"xpplate:_/in", nbt:"plate_text.stored_xp", color:yellow, plain:true}

execute if score *plate_text.blanks _xpplate matches 1.. run function xpplate:_/util/plate_text/blanks
execute if score *plate_text.segments _xpplate matches 1.. run function xpplate:_/util/plate_text/segments

execute if score *plate_text.is_activated _xpplate matches 1 run data modify storage xpplate:_ u.plate_text.left.color set value green
execute if score *plate_text.is_activated _xpplate matches 1 run data modify storage xpplate:_ u.plate_text.right.color set value green

function xpplate:_/util/plate_text/construct

data remove storage xpplate:_ u.plate_text
data remove storage xpplate:_/in plate_text
scoreboard players reset *plate_text.is_activated _xpplate
scoreboard players reset *plate_text.segments _xpplate
scoreboard players reset *plate_text.blanks _xpplate
scoreboard players reset *plate_text.is_negative _xpplate

return 1