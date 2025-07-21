#> jellyportation:recall/fallback/world_spawn/locate.mcfunction
# 
# @calledby     [F] jellyportation:load
#               [S] jellyportation:recall/fallback/world_spawn/locate  -  5s
#

summon marker ~ ~ ~ {Tags:["jellyportation.world_spawn_locator"]}
execute store result storage jellyportation:main WorldSpawn.X int 1 run data get entity @n[type=minecraft:marker,nbt={Tags:["jellyportation.world_spawn_locator"]},distance=..0.1] Pos[0]
execute store result storage jellyportation:main WorldSpawn.Y int 1 run data get entity @n[type=minecraft:marker,nbt={Tags:["jellyportation.world_spawn_locator"]},distance=..0.1] Pos[1]
execute store result storage jellyportation:main WorldSpawn.Z int 1 run data get entity @n[type=minecraft:marker,nbt={Tags:["jellyportation.world_spawn_locator"]},distance=..0.1] Pos[2]
kill @n[type=minecraft:marker,nbt={Tags:["jellyportation.world_spawn_locator"]},distance=..0.1]

execute positioned over motion_blocking run summon marker ~ ~ ~ {Tags:["jellyportation.world_spawn_locator.alt"]}
execute positioned over motion_blocking store result storage jellyportation:main WorldSpawn.Y_alt int 1 run data get entity @n[type=minecraft:marker,nbt={Tags:["jellyportation.world_spawn_locator.alt"]},distance=..0.1] Pos[1]
execute positioned over motion_blocking run kill @n[type=minecraft:marker,nbt={Tags:["jellyportation.world_spawn_locator.alt"]},distance=..0.1]

schedule function jellyportation:recall/fallback/world_spawn/locate 5s