#> xpplate:_/main/plate/active/spiral_active
#--------------------
# ./spiral
#--------------------

scoreboard players operation *x _xpplate = *active.rate _xpplate
scoreboard players set *y _xpplate 4
scoreboard players operation *x _xpplate *= *y _xpplate
execute store result storage xpplate:_ x.macro.rotate int 1 run scoreboard players get *x _xpplate
function xpplate:_/main/plate/active/tp_rotate with storage xpplate:_ x.macro

particle instant_effect{color:13434879} ^0.66 ^0.02 ^ 0 0 0 0 1 normal
particle instant_effect{color:13434879} ^-0.66 ^0.02 ^ 0 0 0 0 1 normal
particle instant_effect{color:13434879} ^ ^0.02 ^0.66 0 0 0 0 1 normal
particle instant_effect{color:13434879} ^ ^0.02 ^-0.66 0 0 0 0 1 normal

