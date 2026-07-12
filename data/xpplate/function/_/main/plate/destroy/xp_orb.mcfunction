#> xpplate:_/main/plate/destroy/xp_orb
# AS [xp orb]
#--------------------
# ./do
#--------------------

execute store result entity @s Value short 1 run scoreboard players get *destroy.stored_xp _xpplate

# velocity:
function six:misc/gen_loot_vector
data modify entity @s Motion set from storage six:out gen_loot_vector.result