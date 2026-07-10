#> xpplate :_/util/ plate_text
# blanks
#--------------------
# ./main
#--------------------

data modify storage xpplate:_ u.plate_text.blanks.extra append value "*"

scoreboard players remove *plate_text.blanks _xpplate 1
execute if score *plate_text.blanks _xpplate matches 1.. run function xpplate:_/util/plate_text/blanks