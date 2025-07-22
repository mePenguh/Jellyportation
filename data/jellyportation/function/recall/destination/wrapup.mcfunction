#> jellyportation:recall/destination/wrapup.mcfunction
# 
# @calledby     [F] jellyportation:recall/teleport  -  with jellyportation:main Player
#

$execute in $(SpawnDimension) positioned $(SpawnX) $(SpawnY) $(SpawnZ) if predicate jellyportation:recall/anchor.charge_check run function jellyportation:recall/destination/anchorcheck
execute if score @s jellyportation.dimension_travel matches 1 run function jellyportation:effect/sound/dimension_travel
$execute in $(SpawnDimension) positioned $(SpawnX) $(SpawnY) $(SpawnZ) run forceload remove ~-2 ~-2 ~2 ~2