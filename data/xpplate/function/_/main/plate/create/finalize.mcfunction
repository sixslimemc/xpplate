#> xpplate:_/main/plate/create/finalize
# AS [xp plate]
#--------------------
# ../floormake/on_catalyst
#--------------------
tag @s remove _xpplate.xp_plate_init
tag @s add xpplate.xp_plate
scoreboard players set @s xpplate.stored_xp 0

execute if score *config.sounds.create _xpplate matches 1 run playsound entity.horse.saddle block @a ~ ~ ~ 0.6 1.8
execute if score *config.sounds.create _xpplate matches 1 run playsound block.amethyst_block.fall block @a ~ ~ ~ 0.3 1.7

execute if score *config.particles.create _xpplate matches 1 run particle instant_effect{color:16777130} ~ ~0.08 ~ 0.25 0.25 0.25 0 10 normal

data modify entity @s data.xpplate.destroy_loot append from storage floormake:api on_catalyst.ingredient_items[][]

data remove storage xpplate:_ t.finalize
