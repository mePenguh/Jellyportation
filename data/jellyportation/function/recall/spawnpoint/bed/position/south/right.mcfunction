#> jellyportation:recall/spawnpoint/bed/position/south/right.mcfunction
# 
# @calledby     [F] jellyportation:recall/spawnpoint/bed/facing/south
#

execute positioned ~-1 ~ ~ if predicate jellyportation:recall/safe/default run return run function jellyportation:recall/teleport {x:"", y:"", z:""}
execute positioned ~-1 ~ ~-1 if predicate jellyportation:recall/safe/default run return run function jellyportation:recall/teleport {x:"", y:"", z:""}
execute positioned ~-1 ~ ~-2 if predicate jellyportation:recall/safe/default run return run function jellyportation:recall/teleport {x:"", y:"", z:""}
execute positioned ~ ~ ~-2 if predicate jellyportation:recall/safe/default run return run function jellyportation:recall/teleport {x:"", y:"", z:""}
execute positioned ~1 ~ ~-2 if predicate jellyportation:recall/safe/default run return run function jellyportation:recall/teleport {x:"", y:"", z:""}
execute positioned ~1 ~ ~-1 if predicate jellyportation:recall/safe/default run return run function jellyportation:recall/teleport {x:"", y:"", z:""}
execute positioned ~1 ~ ~ if predicate jellyportation:recall/safe/default run return run function jellyportation:recall/teleport {x:"", y:"", z:""}
execute positioned ~1 ~ ~1 if predicate jellyportation:recall/safe/default run return run function jellyportation:recall/teleport {x:"", y:"", z:""}
execute positioned ~ ~ ~1 if predicate jellyportation:recall/safe/default run return run function jellyportation:recall/teleport {x:"", y:"", z:""}
execute positioned ~-1 ~ ~1 if predicate jellyportation:recall/safe/default run return run function jellyportation:recall/teleport {x:"", y:"", z:""}

execute positioned ~ ~ ~ if predicate jellyportation:recall/safe/bed run return run function jellyportation:recall/teleport {x:"", y:"0.57", z:""}
execute positioned ~ ~ ~-1 if predicate jellyportation:recall/safe/bed run return run function jellyportation:recall/teleport {x:"", y:"0.57", z:""}

function jellyportation:recall/fallback/world_spawn/position with storage jellyportation:main WorldSpawn