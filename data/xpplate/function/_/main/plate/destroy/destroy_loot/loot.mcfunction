#> xpplate:_/main/plate/destroy/destroy_loot/each.1

$loot spawn ~ ~ ~ loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"$(id)"}],functions:[{function:"minecraft:set_count",count:$(count)},{function:"minecraft:set_components",components:$(components)}]}]}