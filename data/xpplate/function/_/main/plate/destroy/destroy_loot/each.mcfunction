#> xpplate:_/main/plate/destroy/destroy_loot/each
#--------------------
# ../do
#--------------------

data modify storage xpplate:_ t.destroy.this_loot set from storage xpplate:_ t.destroy.destroy_loot[-1]

execute if data storage xpplate:_ t.destroy.this_loot.components align xyz positioned ~0.5 ~0.5 ~0.5 run function xpplate:_/main/plate/destroy/destroy_loot/loot with storage xpplate:_ t.destroy.this_loot
execute unless data storage xpplate:_ t.destroy.this_loot.components align xyz positioned ~0.5 ~0.5 ~0.5 run function xpplate:_/main/plate/destroy/destroy_loot/loot_no_components with storage xpplate:_ t.destroy.this_loot

data remove storage xpplate:_ t.destroy.destroy_loot[-1]
execute if data storage xpplate:_ t.destroy.destroy_loot[0] run function xpplate:_/main/plate/destroy/destroy_loot/each