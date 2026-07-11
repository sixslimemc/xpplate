#> xpplate:_/main/plate/active/spiral_active
#--------------------
# ./spiral
#--------------------

scoreboard players operation *x _xpplate = *active.segment_index _xpplate
execute if score *x _xpplate matches 0.. run scoreboard players add *x _xpplate 1
scoreboard players set *y _xpplate 5
scoreboard players operation *x _xpplate *= *y _xpplate
execute store result storage xpplate:_ x.macro.rotate int 1 run scoreboard players get *x _xpplate
function xpplate:_/main/plate/active/tp_rotate with storage xpplate:_ x.macro

particle instant_effect ^ ^0.02 ^0.6 0 0 0 0 1 normal
particle instant_effect ^ ^0.02 ^-0.6 0 0 0 0 1 normal

