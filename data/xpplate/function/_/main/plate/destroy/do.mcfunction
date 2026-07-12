#> xpplate:_/main/plate/destroy/do
#--------------------
# ../main
#--------------------
kill @s

# deactivate:
execute if entity @s[tag=xpplate.in_use] run function xpplate:_/main/plate/active/deactivate with entity @s data.xpplate.user

# spawn destroy loot:
data modify storage xpplate:_ t.destroy.destroy_loot set from entity @s data.xpplate.destroy_loot
execute if data storage xpplate:_ t.destroy.destroy_loot[0] run function xpplate:_/main/plate/destroy/destroy_loot/each

# xp orb:
scoreboard players operation *destroy.stored_xp _xpplate = @s xpplate.stored_xp
execute if score *destroy.stored_xp _xpplate matches 1.. align xyz positioned ~0.5 ~0.5 ~0.5 summon experience_orb run function xpplate:_/main/plate/destroy/xp_orb

scoreboard players reset *destroy.stored_xp