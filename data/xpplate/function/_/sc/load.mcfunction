#> xpplate:_/sc/load
# @ LOAD

scoreboard objectives add _xpplate dummy
scoreboard objectives add xpplate.stored_xp dummy
scoreboard objectives add _xpplate.glitter_timer dummy
scoreboard objectives add _xpplate.join minecraft.custom:minecraft.leave_game

# DECLARE TAGS:
# .xp_plate
# .in_use
# .ignore

# DEBUG
scoreboard players reset *init _xpplate

execute unless score *init _xpplate matches 1 run function xpplate:_/sc/init

function xpplate:_/floormake/registry

function xpplate:_/main/cache_config

# constants
scoreboard players set *max_stored _xpplate 32767