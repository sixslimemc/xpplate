#> xpplate:_/main/plate/active/etick
#--------------------
# ../etick
#--------------------

function xpplate:_/main/plate/active/tag_user with entity @s data.xpplate.user
execute unless entity @p[tag=_xpplate.user, predicate=xpplate:_/valid_user, distance=..0.6] run return run function xpplate:_/main/plate/active/deactivate

