#> jellyportation:recall/world_spawn/position.mcfunction
# 
# @calledby     [F] jellyportation:recall/init  -  with storage jellyportation:main WorldSpawn
#               [F] jellyportation:recall/spawnpoint/identify  -  with storage jellyportation:main WorldSpawn
#               [F] jellyportation:recall/spawnpoint/bed/position/east/left  -  with storage jellyportation:main WorldSpawn
#               [F] jellyportation:recall/spawnpoint/bed/position/east/right  -  with storage jellyportation:main WorldSpawn
#               [F] jellyportation:recall/spawnpoint/bed/position/north/left  -  with storage jellyportation:main WorldSpawn
#               [F] jellyportation:recall/spawnpoint/bed/position/north/right  -  with storage jellyportation:main WorldSpawn
#               [F] jellyportation:recall/spawnpoint/bed/position/south/left  -  with storage jellyportation:main WorldSpawn
#               [F] jellyportation:recall/spawnpoint/bed/position/south/right  -  with storage jellyportation:main WorldSpawn
#               [F] jellyportation:recall/spawnpoint/bed/position/west/left  -  with storage jellyportation:main WorldSpawn
#               [F] jellyportation:recall/spawnpoint/bed/position/west/right  -  with storage jellyportation:main WorldSpawn
#               [F] jellyportation:recall/spawnpoint/anchor/teleport  -  with storage jellyportation:main WorldSpawn
#               [F] jellyportation:recall/spawnpoint/default/teleport  -  with storage jellyportation:main WorldSpawn
#

tellraw @s {"translate":"block.minecraft.spawn.not_valid"}
$execute in minecraft:overworld positioned $(X) $(Y) $(Z) if predicate jellyportation:recall/safe/default run return run function jellyportation:recall/teleport {x:"", y:"", z:""}
$execute in minecraft:overworld positioned $(X) $(Y_alt) $(Z) if predicate jellyportation:recall/safe/default run return run function jellyportation:recall/teleport {x:"", y:"", z:""}