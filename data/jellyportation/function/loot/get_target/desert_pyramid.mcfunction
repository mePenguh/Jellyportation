#> jellyportation:loot/get_target/desert_pyramid.mcfunction
# 
# @calledby     [A] jellyportation:utility/loot/desert_pyramid
#

advancement revoke @s only jellyportation:utility/loot/desert_pyramid

data modify storage jellyportation:main Player.Loot.Chance set value 15
execute store result score @s jellyportation.loot_chance run random value 1..100

execute at @s run function retina_jelly:traverse/setup
execute store result storage jellyportation:main Player.Loot.X int 1 run data get storage retina_jelly:output TargetedBlock[0]
execute store result storage jellyportation:main Player.Loot.Y int 1 run data get storage retina_jelly:output TargetedBlock[1]
execute store result storage jellyportation:main Player.Loot.Z int 1 run data get storage retina_jelly:output TargetedBlock[2]

function jellyportation:loot/append/chest with storage jellyportation:main Player.Loot