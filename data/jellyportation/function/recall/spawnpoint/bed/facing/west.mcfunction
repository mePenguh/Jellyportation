#> jellyportation:recall/spawnpoint/bed/facing/west.mcfunction
# 
# @calledby     [F] jellyportation:recall/spawnpoint/bed/get_facing
#

execute if score @s jellyportation.spawn_angle matches -90..90 run return run function jellyportation:recall/spawnpoint/bed/position/west/right
function jellyportation:recall/spawnpoint/bed/position/west/left