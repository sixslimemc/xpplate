#> xpplate:_/main/plate/inactive/activate
#--------------------
# ./etick
#--------------------

data modify storage xpplate:_ x.uuid set from entity @p[tag=_xpplate.user] UUID

data modify entity @s data.xpplate.user.uuid set from storage xpplate:_ x.uuid

data modify storage six:in guuid.uuid set from storage xpplate:_ x.uuid
function six:uuid/guuid
data modify entity @s data.xpplate.user.guuid set from storage six:out guuid.result

# TODO: sfx
execute if score *config.sounds.step _xpplate matches 1 run playsound block.metal_pressure_plate.click_on block @a ~ ~ ~ 0.6 1.5

tag @p[tag=_xpplate.user] remove _xpplate.user
tag @s add xpplate.in_use

