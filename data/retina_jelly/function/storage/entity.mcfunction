data modify storage retina_jelly:output Target set value 'ENTITY'
data modify storage retina_jelly:output TargetedEntity set value {UUID:[I;0,0,0,0],Pos:[0.0f,0.0f,0.0f]}
execute as @e[type=!#retina_jelly:ignore,tag=retina.possible_target] if score @s retina.id = $closest_cuboid_id retina.__variable__ run function retina_jelly:__private__/anonymous/12
data modify storage retina_jelly:data Entity set from entity @e[type=!#retina_jelly:ignore,tag=retina.target,limit=1]
data modify storage retina_jelly:output TargetedEntity.UUID set from storage retina_jelly:data Entity.UUID
data modify storage retina_jelly:output TargetedEntity.Pos set from storage retina_jelly:data Entity.Pos
data remove storage retina_jelly:data Entity
data modify storage retina_jelly:output ContactSurface set from storage retina_jelly:data ContactSurface
data modify storage retina_jelly:output ContactCoordinates set value [0.0d,0.0d,0.0d]
execute if score $X0 retina.__variable__ matches ..-1 run scoreboard players add $X0 retina.__variable__ 480
execute if score $Y0 retina.__variable__ matches ..-1 run scoreboard players add $Y0 retina.__variable__ 480
execute if score $expand_entity_hitboxes retina.__variable__ = $expand_entity_hitboxes retina.__variable__ run function retina_jelly:__private__/if_else/29
scoreboard players operation $targeted_X retina.__variable__ += $origin_X retina.__variable__
execute store result storage retina_jelly:output ContactCoordinates[0] double 0.0020833 run scoreboard players get $targeted_X retina.__variable__
execute if score $nearest_axis retina.__variable__ matches 0 run function retina_jelly:__private__/if_else/30
scoreboard players operation $targeted_Y retina.__variable__ += $origin_Y retina.__variable__
execute store result storage retina_jelly:output ContactCoordinates[1] double 0.0020833 run scoreboard players get $targeted_Y retina.__variable__
execute if score $nearest_axis retina.__variable__ matches 1 run function retina_jelly:__private__/if_else/31
scoreboard players operation $targeted_Z retina.__variable__ += $origin_Z retina.__variable__
execute store result storage retina_jelly:output ContactCoordinates[2] double 0.0020833 run scoreboard players get $targeted_Z retina.__variable__
execute if score $nearest_axis retina.__variable__ matches 2 run function retina_jelly:__private__/if_else/32
scoreboard players operation $total_distance retina.__variable__ /= 480 retina.__int__
execute if score $total_distance retina.__variable__ matches ..-1 run scoreboard players operation $total_distance retina.__variable__ *= -1 retina.__int__
execute store result storage retina_jelly:output Distance double 0.0020833 run scoreboard players get $total_distance retina.__variable__
execute if data storage retina_jelly:input {EndpointEntity:true} summon minecraft:marker run function retina_jelly:__private__/anonymous/13