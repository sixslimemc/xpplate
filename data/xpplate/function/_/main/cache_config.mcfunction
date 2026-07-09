#> xpplate:_/main/cache_config
#--------------------
# _/sc/load
#--------------------

execute store success score *config.particles.threshold_indicator _xpplate if data storage xpplate:config particles{threshold_indicator:true}
execute store success score *config.particles.glitter _xpplate if data storage xpplate:config particles{glitter:true}
execute store success score *config.particles.spiral _xpplate if data storage xpplate:config particles{transfer_spiral:true}

execute store success score *config.sounds.step _xpplate if data storage xpplate:config sounds{step_on_off:true}
execute store success score *config.sounds.transfer _xpplate if data storage xpplate:config sounds{transfer:true}
execute store success score *config.sounds.create _xpplate if data storage xpplate:config sounds{create:true}
execute store success score *config.sounds.threshold_indicator _xpplate if data storage xpplate:config sounds{threshold_indicator:true}

data modify storage xpplate:_ config set from storage xpplate:config