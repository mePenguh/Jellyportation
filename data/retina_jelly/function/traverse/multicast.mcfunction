execute store result score $horizontal_count retina.__variable__ run data get storage retina_jelly:input HorizontalCount 10
execute store result score $vertical_count retina.__variable__ run data get storage retina_jelly:input VerticalCount 10
execute store result score $centered_count retina.__variable__ run data get storage retina_jelly:input CenteredCount 1
execute if score $horizontal_count retina.__variable__ matches ..0 run return run tellraw @a ["",{"text":"[Error] ","color":"dark_red","type":"text"},{"text":"HorizontalCount storage has invalid value of ","color":"red","type":"text"},{"score":{"name":"$horizontal_count","objective":"retina.__variable__"},"color":"red","type":"score"}]
execute if score $vertical_count retina.__variable__ matches ..0 run return run tellraw @a ["",{"text":"[Error] ","color":"dark_red","type":"text"},{"text":"VerticalCount storage has invalid value of ","color":"red","type":"text"},{"score":{"name":"$vertical_count","objective":"retina.__variable__"},"color":"red","type":"score"}]
execute if score $centered_count retina.__variable__ matches ..-1 run return run tellraw @a ["",{"text":"[Error] ","color":"dark_red","type":"text"},{"text":"CenteredCount storage has invalid value of ","color":"red","type":"text"},{"score":{"name":"$centered_count","objective":"retina.__variable__"},"color":"red","type":"score"}]
execute store result score $spread_least retina.__variable__ run data get storage retina_jelly:input SpreadFactor[0]
execute store result score $spread_most retina.__variable__ run data get storage retina_jelly:input SpreadFactor[1]
scoreboard players set $single_call retina.__variable__ 0
tag @e remove retina.target
scoreboard players reset * retina.hit
kill @e[type=marker,tag=retina.endpoint]
execute store result score $input_pitch retina.__variable__ run data get entity @s Rotation[1] 10
execute store result score $input_yaw retina.__variable__ run data get entity @s Rotation[0] 10
function retina_jelly:math/gimbal_to_matrix
scoreboard players set $i retina.__variable__ 0
execute if score $i retina.__variable__ < $horizontal_count retina.__variable__ run function retina_jelly:__private__/for_loop/0
scoreboard players set $k retina.__variable__ 0
execute if score $k retina.__variable__ < $centered_count retina.__variable__ run function retina_jelly:__private__/for_loop/2
scoreboard players set $single_call retina.__variable__ 1