#> xpplate : xp_plate/make

data remove storage xpplate:out make

execute store result score *x _xpplate align xyz positioned ~0.5 ~ ~0.5 run function xpplate:_/impl/xp_plate/make/main

data remove storage xpplate:_ v.make
data remove storage xpplate:in make

return run scoreboard players get *x _xpplate