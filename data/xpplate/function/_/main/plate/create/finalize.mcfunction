#> xpplate:_/main/plate/create/finalize
# AS [xp plate]
#--------------------
# ../floormake/on_catalyst
#--------------------
tag @s remove _xpplate.xp_plate_init
tag @s add xpplate.xp_plate
scoreboard players set @s xpplate.stored_xp 0

execute if score *config.sounds.create _xpplate matches 1 run playsound entity.horse.saddle block @a ~ ~ ~ 0.2 1.8
execute if score *config.sounds.create _xpplate matches 1 run playsound block.amethyst_block.fall block @a ~ ~ ~ 0.6 2

data modify entity @s data.xpplate.destroy_loot append from storage floormake:api on_catalyst.ingredient_items[][]

data remove storage xpplate:_ t.finalize
