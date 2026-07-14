#> xpplate:_/sc/uninstall
# @ UNINSTALL

# destroy all:
execute as @e[type=marker, tag=xpplate.xp_plate] at @s run function xpplate:xp_plate/unmake

scoreboard objectives remove _xpplate
scoreboard objectives remove _xpplate.glitter_timer
scoreboard objectives remove _xpplate.join
scoreboard objectives remove xpplate.stored_xp

data remove storage xpplate:_ x
data remove storage xpplate:_ t
data remove storage xpplate:_ v
data remove storage xpplate:_ u
data remove storage xpplate:_ a
data remove storage xpplate:_ data
data remove storage xpplate:_ const
data remove storage xpplate:_ config

data remove storage xpplate:config sounds
data remove storage xpplate:config particles
data remove storage xpplate:config transfer_rates

data remove storage xpplate:data default_destroy_loot
