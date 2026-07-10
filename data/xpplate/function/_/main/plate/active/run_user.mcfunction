#> xpplate:_/main/plate/active/run_user
#--------------------
# ./etick
#--------------------
$tag $(guuid) add _xpplate.user_target
execute as @p[tag=_xpplate.user_target] if entity @s[distance=..0.6] at @s if predicate xpplate:_/valid_user run function xpplate:_/main/plate/active/user/etick
tag @p[tag=_xpplate.user_target] remove _xpplate.user_target