#> xpplate:_/main/plate/active/deactivate
#--------------------
# ./etick
#--------------------

$execute as $(guuid) at @s run function xpplate:_/main/plate/active/user/deactivate
data remove entity @s data.xpplate.user
tag @s remove xpplate.in_use

# TODO: sfx
execute if score *config.sounds.step _xpplate matches 1 run playsound block.metal_pressure_plate.click_off block @a ~ ~ ~ 0.6 1.5
