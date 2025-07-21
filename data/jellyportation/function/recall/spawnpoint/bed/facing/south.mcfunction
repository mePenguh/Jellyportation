#> jellyportation:recall/spawnpoint/bed/facing/south.mcfunction
# 
# @calledby     [F] jellyportation:recall/spawnpoint/bed/get_facing
#

execute if score @s jellyportation.spawn_angle matches 0..180 run return run function jellyportation:recall/spawnpoint/bed/position/south/left
function jellyportation:recall/spawnpoint/bed/position/south/right