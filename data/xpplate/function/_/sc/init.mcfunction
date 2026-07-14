#> xpplate:_/sc/init
# @ INIT
scoreboard players set *init _xpplate 1

data modify storage xpplate:config particles set value {transfer:true, active:true, create:true, inactive:true}
data modify storage xpplate:config sounds set value {create:true, step_on_off:true}

data modify storage xpplate:config transfer_rates set value [{rate:2, threshold_size:30}]
data modify storage xpplate:config transfer_rates append value {rate:5, threshold_size:30}
data modify storage xpplate:config transfer_rates append value {rate:10, threshold_size:30}

data modify storage xpplate:data default_destroy_loot set value [{id:"minecraft:chest", count:1}, {id:"minecraft:emerald", count:1}]