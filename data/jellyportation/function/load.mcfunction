#> jellyportation:load.mcfunction
# 
# @calledby     [T] #minecraft:load
#

execute unless data storage jellyportation:main End.FountainY run schedule function jellyportation:fountain/locate/init 5s
data modify storage jellyportation:main End.FountainState set value false

scoreboard objectives add jellyportation.xp_points dummy
scoreboard objectives add jellyportation.xp_levels dummy
scoreboard objectives add jellyportation.spawn_angle dummy
scoreboard objectives add jellyportation.anchor_charges dummy
scoreboard objectives add jellyportation.dimension_travel dummy
scoreboard objectives add jellyportation.loot_chance dummy
scoreboard objectives add jellyportation.id dummy
scoreboard objectives add jellyportation.soundcheck_status dummy
scoreboard objectives add jellyportation.free_slots dummy

execute if score jellyportation_id_tracker jellyportation.id matches 0 run scoreboard players add jellyportation.id_tracker jellyportation.id 1

function jellyportation:recall/fallback/world_spawn/locate