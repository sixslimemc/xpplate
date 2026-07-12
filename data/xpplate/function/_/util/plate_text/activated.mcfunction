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

# execute if score *plate_text.is_negative _xpplate matches 1 run data modify storage xpplate:_ u.plate_text.left merge value {color:dark_green, bold:false}
execute if score *plate_text.is_negative _xpplate matches 1 run data modify storage xpplate:_ u.plate_text.right merge value {color:aqua, bold:false}
# execute if score *plate_text.is_negative _xpplate matches 1 run data modify storage xpplate:_ u.plate_text.center merge value {bold:false, color:yellow}
execute if score *plate_text.is_negative _xpplate matches 0 run data modify storage xpplate:_ u.plate_text.left merge value {color:aqua, bold:false}
# execute if score *plate_text.is_negative _xpplate matches 0 run data modify storage xpplate:_ u.plate_text.right merge value {color:red, bold:false}
# execute if score *plate_text.is_negative _xpplate matches 0 run data modify storage xpplate:_ u.plate_text.center merge value {bold:false, color:yellow}