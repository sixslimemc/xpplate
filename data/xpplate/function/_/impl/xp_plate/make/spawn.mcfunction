# IMPL > xpplate : xp_plate/make
# spawn
#--------------------
# ./main
#--------------------

function xpplate:_/main/plate/create/spawn

execute unless data storage xpplate:in make.destroy_loot run data modify storage xpplate:in make.destroy_loot set from storage xpplate:data default_destroy_loot
data modify storage xpplate:_ t.finalize.destroy_loot set from storage xpplate:in make.destroy_loot

function xpplate:_/main/plate/create/finalize