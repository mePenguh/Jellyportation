#> jellyportation:recall/spawnpoint/bed/get_facing.mcfunction
# 
# @calledby     [F] jellyportation:recall/spawnpoint/identify
#

execute if block ~ ~ ~ #minecraft:beds[facing=east] run function jellyportation:recall/spawnpoint/bed/facing/east
execute if block ~ ~ ~ #minecraft:beds[facing=north] run function jellyportation:recall/spawnpoint/bed/facing/north
execute if block ~ ~ ~ #minecraft:beds[facing=south] run function jellyportation:recall/spawnpoint/bed/facing/south
execute if block ~ ~ ~ #minecraft:beds[facing=west] run function jellyportation:recall/spawnpoint/bed/facing/west

forceload remove ~-2 ~-2 ~2 ~2