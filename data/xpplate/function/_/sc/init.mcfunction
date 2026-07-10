#> xpplate:_/sc/init
# @ INIT
scoreboard players set *init _xpplate 1

data modify storage xpplate:config particles set value {glitter:true, threshold_indicator:true, transfer_spiral:true}
data modify storage xpplate:config sounds set value {create:true, step_on_off:true, threshold_indicator:true, transfer:true}

data modify storage xpplate:config transfer_rates set value [{rate:1, threshold_size:15}]
data modify storage xpplate:config transfer_rates append value {rate:2, threshold_size:15}
data modify storage xpplate:config transfer_rates append value {rate:4, threshold_size:20}
data modify storage xpplate:config transfer_rates append value {rate:8, threshold_size:20}
data modify storage xpplate:config transfer_rates append value {rate:16, threshold_size:20}