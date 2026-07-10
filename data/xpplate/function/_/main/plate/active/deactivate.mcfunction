#> xpplate:_/main/plate/active/deactivate
#--------------------
# ./etick
#--------------------

data remove entity @s data.xpplate.user
tag @s remove xpplate.in_use
tag @p[tag=_xpplate.user] remove _xpplate.user

# TODO: sfx
execute if score *config.sounds.step _xpplate matches 1 run playsound block.metal_pressure_plate.click_off block @a ~ ~ ~ 0.6 1.5
