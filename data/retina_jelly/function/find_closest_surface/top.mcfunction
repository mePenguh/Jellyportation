data modify storage retina_jelly:data List set from storage retina_jelly:data Surfaces.Top
execute store result score $cuboid_id retina.__variable__ store result score $surfaces retina.__variable__ run data get storage retina_jelly:data List
scoreboard players remove $cuboid_id retina.__variable__ 1
execute if score $surfaces retina.__variable__ matches 1.. run function retina_jelly:__private__/while_loop/3