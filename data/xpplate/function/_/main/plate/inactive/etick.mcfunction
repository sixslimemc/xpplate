#> xpplate:_/main/plate/inactive/etick
#--------------------
# ../etick
#--------------------

# get _.user:
tag @p[predicate=xpplate:_/valid_user, distance=..0.6] add _xpplate.user
execute unless entity @p[tag=_xpplate.user] run return 0

function xpplate:_/main/plate/inactive/activate