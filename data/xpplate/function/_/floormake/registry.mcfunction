#> xpplate:_/floormake/registry
#--------------------
# _/sc/load
#--------------------

data modify storage floormake:in register.recipes set value []
data modify storage floormake:in register.recipes append value {id:"xp_plate", radius:0.7, result:{on_ingredients:"function xpplate:_/main/plate/floormake/on_ingredients", on_catalyst:"function xpplate:_/main/plate/floormake/on_catalyst"}, ingredients:[], pack_id:""}
data modify storage floormake:in register.recipes[-1].ingredients append value {id:"minecraft:chest", count:1, is_consumed:true, condition:"function xpplate:_/main/plate/floormake/condition"}
data modify storage floormake:in register.recipes[-1].ingredients append value {id:"minecraft:emerald", count:1, is_consumed:true}

data modify storage floormake:in register.recipes[].pack_id set value "xpplate"

function floormake:api/register