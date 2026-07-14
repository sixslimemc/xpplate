#> xpplate : xp_plate/unmake

# data remove storage xpplate:out unmake

execute store result score *x _xpplate align xyz positioned ~0.5 ~ ~0.5 run function xpplate:_/impl/xp_plate/unmake/main

# data remove storage xpplate:_ v.unmake

return run scoreboard players get *x _xpplate