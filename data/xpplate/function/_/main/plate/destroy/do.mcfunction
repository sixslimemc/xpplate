#> xpplate:_/main/plate/destroy/do
#--------------------
# ../main
#--------------------
kill @s

# spawn destroy loot:
data modify storage xpplate:_ t.destroy.destroy_loot set from entity @s data.xpplate.destroy_loot
execute if data storage xpplate:_ t.destroy.destroy_loot[0] run function xpplate:_/main/plate/destory/destroy_loot/each
