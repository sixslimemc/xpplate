#> xpplate:_/main/plate/floormake/on_ingredients
#--------------------
# @ floormake : <result on_ingredients>
#--------------------

execute if score @s floormake.ingredient_index matches 0 align xyz positioned ~0.5 ~ ~0.5 summon marker run function xpplate:_/main/plate/create/spawn

execute if score *config.particles.create _xpplate matches 1 run particle dust{color:[0.4, 1, 0.4], scale:1} ~ ~.1 ~ 0.15 0.15 0.15 1 8 normal