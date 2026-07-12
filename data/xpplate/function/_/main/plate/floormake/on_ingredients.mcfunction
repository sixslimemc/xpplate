#> xpplate:_/main/plate/floormake/on_ingredients
#--------------------
# @ floormake : <result on_ingredients>
#--------------------

execute if score @s floormake.ingredient_index matches 0 align xyz positioned ~0.5 ~ ~0.5 summon marker run function xpplate:_/main/plate/create/spawn

particle dust{color:[0.4, 1, 0.4], scale:1} ~ ~.05 ~ 0.1 0.1 0.1 1 8 normal