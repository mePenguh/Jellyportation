#> jellyportation:recall/get_spawn_dimension.mcfunction
# 
# @calledby     [F] jellyportation:recall/init
#

execute if data entity @s respawn.dimension run return run data modify storage jellyportation:main Player.SpawnDimension set from entity @s respawn.dimension
data modify storage jellyportation:main Player.SpawnDimension set value "minecraft:overworld"