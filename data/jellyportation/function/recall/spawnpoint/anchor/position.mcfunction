#> jellyportation:recall/spawnpoint/anchor/position.mcfunction
# 
# @calledby     [F] jellyportation:recall/spawnpoint/anchor/init
#

execute positioned ~ ~ ~-1 if predicate jellyportation:recall/safe/default run return run function jellyportation:recall/teleport {x:"", y:"", z:""}
execute positioned ~-1 ~ ~ if predicate jellyportation:recall/safe/default run return run function jellyportation:recall/teleport {x:"", y:"", z:""}
execute positioned ~ ~ ~1 if predicate jellyportation:recall/safe/default run return run function jellyportation:recall/teleport {x:"", y:"", z:""}
execute positioned ~1 ~ ~ if predicate jellyportation:recall/safe/default run return run function jellyportation:recall/teleport {x:"", y:"", z:""}
execute positioned ~-1 ~ ~-1 if predicate jellyportation:recall/safe/default run return run function jellyportation:recall/teleport {x:"", y:"", z:""}
execute positioned ~1 ~ ~-1 if predicate jellyportation:recall/safe/default run return run function jellyportation:recall/teleport {x:"", y:"", z:""}
execute positioned ~-1 ~ ~1 if predicate jellyportation:recall/safe/default run return run function jellyportation:recall/teleport {x:"", y:"", z:""}
execute positioned ~1 ~ ~1 if predicate jellyportation:recall/safe/default run return run function jellyportation:recall/teleport {x:"", y:"", z:""}

execute positioned ~ ~-1 ~-1 if predicate jellyportation:recall/safe/default run return run function jellyportation:recall/teleport {x:"", y:"", z:""}
execute positioned ~-1 ~-1 ~ if predicate jellyportation:recall/safe/default run return run function jellyportation:recall/teleport {x:"", y:"", z:""}
execute positioned ~ ~-1 ~1 if predicate jellyportation:recall/safe/default run return run function jellyportation:recall/teleport {x:"", y:"", z:""}
execute positioned ~1 ~-1 ~ if predicate jellyportation:recall/safe/default run return run function jellyportation:recall/teleport {x:"", y:"", z:""}
execute positioned ~-1 ~-1 ~-1 if predicate jellyportation:recall/safe/default run return run function jellyportation:recall/teleport {x:"", y:"", z:""}
execute positioned ~1 ~-1 ~-1 if predicate jellyportation:recall/safe/default run return run function jellyportation:recall/teleport {x:"", y:"", z:""}
execute positioned ~-1 ~-1 ~1 if predicate jellyportation:recall/safe/default run return run function jellyportation:recall/teleport {x:"", y:"", z:""}
execute positioned ~1 ~-1 ~1 if predicate jellyportation:recall/safe/default run return run function jellyportation:recall/teleport {x:"", y:"", z:""}

execute positioned ~ ~1 ~-1 if predicate jellyportation:recall/safe/default run return run function jellyportation:recall/teleport {x:"", y:"", z:""}
execute positioned ~-1 ~1 ~ if predicate jellyportation:recall/safe/default run return run function jellyportation:recall/teleport {x:"", y:"", z:""}
execute positioned ~ ~1 ~1 if predicate jellyportation:recall/safe/default run return run function jellyportation:recall/teleport {x:"", y:"", z:""}
execute positioned ~1 ~1 ~ if predicate jellyportation:recall/safe/default run return run function jellyportation:recall/teleport {x:"", y:"", z:""}
execute positioned ~-1 ~1 ~-1 if predicate jellyportation:recall/safe/default run return run function jellyportation:recall/teleport {x:"", y:"", z:""}
execute positioned ~1 ~1 ~-1 if predicate jellyportation:recall/safe/default run return run function jellyportation:recall/teleport {x:"", y:"", z:""}
execute positioned ~-1 ~1 ~1 if predicate jellyportation:recall/safe/default run return run function jellyportation:recall/teleport {x:"", y:"", z:""}
execute positioned ~1 ~1 ~1 if predicate jellyportation:recall/safe/default run return run function jellyportation:recall/teleport {x:"", y:"", z:""}
execute positioned ~ ~1 ~ if predicate jellyportation:recall/safe/default run return run function jellyportation:recall/teleport {x:"", y:"", z:""}

forceload remove ~-2 ~-2 ~2 ~2

function jellyportation:recall/fallback/world_spawn/position with storage jellyportation:main WorldSpawn