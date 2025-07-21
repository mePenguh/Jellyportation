#> jellyportation:recall/spawnpoint/bed/facing/north.mcfunction
# 
# @calledby     [F] jellyportation:recall/spawnpoint/bed/get_facing
#

execute if score @s jellyportation.spawn_angle matches -180..-1 run return run function jellyportation:recall/spawnpoint/bed/position/north/left
function jellyportation:recall/spawnpoint/bed/position/north/right