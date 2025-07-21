#> jellyportation:recall/teleport.mcfunction
# 
# @calledby     [F] jellyportation:recall/fallback/world_spawn/position  -  with {x, y, z}
#               [F] jellyportation:recall/spawnpoint/bed/position/east/left  -  with {x, y, z}
#               [F] jellyportation:recall/spawnpoint/bed/position/east/right  -  with {x, y, z}
#               [F] jellyportation:recall/spawnpoint/bed/position/north/left  -  with {x, y, z}
#               [F] jellyportation:recall/spawnpoint/bed/position/north/right  -  with {x, y, z}
#               [F] jellyportation:recall/spawnpoint/bed/position/south/left  -  with {x, y, z}
#               [F] jellyportation:recall/spawnpoint/bed/position/south/right  -  with {x, y, z}
#               [F] jellyportation:recall/spawnpoint/bed/position/west/left  -  with {x, y, z}
#               [F] jellyportation:recall/spawnpoint/bed/position/west/right  -  with {x, y, z}
#               [F] jellyportation:recall/spawnpoint/anchor/teleport  -  with {x, y, z}
#               [F] jellyportation:recall/spawnpoint/default/teleport  -  with {x, y, z}
#

$summon marker ~$(x) ~$(y) ~$(z) {Tags:["jellyportation.recall_destination"]}
$tp @s ~$(x) ~$(y) ~$(z) 
function jellyportation:recall/destination/wrapup with storage jellyportation:main Player
function jellyportation:recall/destination/loadcheck
