#> xpplate:_/main/plate/inactive/activate
#--------------------
# ./etick
#--------------------

data modify storage xpplate:_ x.uuid set from entity @p[tag=_xpplate.user_init] UUID

data modify entity @s data.xpplate.user.uuid set from storage xpplate:_ x.uuid

data modify storage six:in guuid.uuid set from storage xpplate:_ x.uuid
function six:uuid/guuid
data modify entity @s data.xpplate.user.guuid set from storage six:out guuid.result

execute if score *config.sounds.step _xpplate matches 1 run playsound block.beacon.activate block @a ~ ~ ~ 0.3 2

execute if score *config.particles.glitter _xpplate matches 1 run particle instant_effect{color:16777130} ~ ~0.02 ~ 0 0 0 1 6 normal

tag @p[tag=_xpplate.user_init] add _xpplate.user
tag @p[tag=_xpplate.user_init] remove _xpplate.user_init
tag @s add xpplate.in_use

