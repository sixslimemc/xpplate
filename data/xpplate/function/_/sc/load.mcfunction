#> xpplate:_/sc/load
# @ LOAD

scoreboard objectives add _xpplate dummy

# DECLARE TAGS:
# .xp_plate

# DEBUG
scoreboard players reset *init _xpplate

execute unless score *init _xpplate matches 1 run function xpplate:_/sc/init

function xpplate:_/floormake/registry