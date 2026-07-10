#> xpplate :_/util/ plate_text
# segments
#--------------------
# ./main
#--------------------

execute if score *plate_text.is_negative _xpplate matches 0 run data modify storage xpplate:_ u.plate_text.left.extra append value ">"
execute if score *plate_text.is_negative _xpplate matches 0 run data modify storage xpplate:_ u.plate_text.right.extra append value "<"

execute if score *plate_text.is_negative _xpplate matches 1 run data modify storage xpplate:_ u.plate_text.left.extra append value "<"
execute if score *plate_text.is_negative _xpplate matches 1 run data modify storage xpplate:_ u.plate_text.right.extra append value ">"

scoreboard players remove *plate_text.segments _xpplate 1
execute if score *plate_text.segments _xpplate matches 1.. run function xpplate:_/util/plate_text/segments