#> jellyportation:recall/spawnpoint/identify.mcfunction
# 
# @calledby     [F] jellyportation:recall/init  -  with jellyportation:main Player
#

$execute in $(SpawnDimension) positioned $(SpawnX) $(SpawnY) $(SpawnZ) run forceload add ~-2 ~-2 ~2 ~2

$execute in $(SpawnDimension) positioned $(SpawnX) $(SpawnY) $(SpawnZ) if block ~ ~ ~ #minecraft:beds run return run function jellyportation:recall/spawnpoint/bed/get_facing
$execute in $(SpawnDimension) positioned $(SpawnX) $(SpawnY) $(SpawnZ) if block ~ ~ ~ minecraft:respawn_anchor unless block ~ ~ ~ minecraft:respawn_anchor[charges=0] run return run function jellyportation:recall/spawnpoint/anchor/init
$execute in $(SpawnDimension) positioned $(SpawnX) $(SpawnY) $(SpawnZ) if data entity @s {respawn:{forced:1b}} run return run function jellyportation:recall/spawnpoint/default/init

function jellyportation:recall/fallback/world_spawn/position with storage jellyportation:main WorldSpawn