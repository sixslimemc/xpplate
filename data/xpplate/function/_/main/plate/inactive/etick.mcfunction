#> xpplate:_/main/plate/inactive/etick
#--------------------
# ../etick
#--------------------

# get _.user:
tag @p[predicate=xpplate:_/valid_user, tag=!_xpplate.user, distance=..0.6] add _xpplate.user_init
execute if entity @p[tag=_xpplate.user_init] run return run function xpplate:_/main/plate/inactive/activate

execute if score *config.particles.glitter _xpplate matches 1 run function xpplate:_/main/plate/inactive/glitter