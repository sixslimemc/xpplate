#> xpplate:_/main/plate/floormake/on_catalyst
#--------------------
# @ floormake : <result on_catalyst>
#--------------------

data modify storage xpplate:_ t.finalize.destroy_loot set value []
data modify storage xpplate:_ t.finalize.destroy_loot append from storage floormake:api on_catalyst.ingredient_items[][]
execute as @n[type=marker, tag=_xpplate.xp_plate_init] at @s run function xpplate:_/main/plate/create/finalize
