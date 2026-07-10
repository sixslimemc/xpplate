#> xpplate:_/sc/load
# @ LOAD

scoreboard objectives add _xpplate dummy
scoreboard objectives add xpplate.stored_xp dummy

# DECLARE TAGS:
# .xp_plate
# .ignore

# DEBUG
scoreboard players reset *init _xpplate

execute unless score *init _xpplate matches 1 run function xpplate:_/sc/init

function xpplate:_/floormake/registry

function xpplate:_/main/cache_config