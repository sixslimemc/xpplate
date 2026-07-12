#> xpplate:_/main/cache_config
#--------------------
# _/sc/load
#--------------------

execute store success score *config.particles.glitter _xpplate if data storage xpplate:config particles{glitter:true}
execute store success score *config.particles.spiral _xpplate if data storage xpplate:config particles{transfer_spiral:true}
execute store success score *config.particles.create _xpplate if data storage xpplate:config particles{create:true}

execute store success score *config.sounds.step _xpplate if data storage xpplate:config sounds{step_on_off:true}
execute store success score *config.sounds.create _xpplate if data storage xpplate:config sounds{create:true}

execute store result score *config.transfer_rates.count _xpplate if data storage xpplate:config transfer_rates[]

data modify storage xpplate:_ config set from storage xpplate:config