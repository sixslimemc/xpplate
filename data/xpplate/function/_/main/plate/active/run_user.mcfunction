#> xpplate:_/main/plate/active/run_user
#--------------------
# ./etick
#--------------------
$execute as $(guuid) if entity @s[distance=..1] at @s run say hi
$execute as $(guuid) if entity @s[distance=..0.6] at @s if predicate xpplate:_/valid_user run function xpplate:_/main/plate/active/user/etick