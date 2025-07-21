#> jellyportation:recall/init.mcfunction
# 
# @calledby     [A] jellyportation:utility/ate.recall_jelly
#

advancement revoke @s only jellyportation:utility/ate.recall_jelly
advancement grant @s only jellyportation:homecoming

function jellyportation:effect/particle/vanish


execute unless data entity @s respawn run return run function jellyportation:recall/fallback/world_spawn/position with storage jellyportation:main WorldSpawn

function jellyportation:recall/get_spawn_dimension
data modify storage jellyportation:main Player.SpawnX set from entity @s respawn.pos[0]
data modify storage jellyportation:main Player.SpawnY set from entity @s respawn.pos[1]
data modify storage jellyportation:main Player.SpawnZ set from entity @s respawn.pos[2]

data modify storage jellyportation:main Player.Dimension set from entity @s Dimension
execute store result score @s jellyportation.dimension_travel run data modify storage jellyportation:main Player.Dimension set from storage jellyportation:main Player.SpawnDimension

execute store result score @s jellyportation.spawn_angle run data get entity @s respawn.angle


function jellyportation:recall/spawnpoint/identify with storage jellyportation:main Player