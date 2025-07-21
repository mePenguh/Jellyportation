data remove storage retina_jelly:data Surfaces
data modify storage retina_jelly:data Surfaces set value {Top:[],Bottom:[],West:[],East:[],North:[],South:[]}
function retina_jelly:check/block/get_hitbox
execute if data storage retina_jelly:data Surfaces run function retina_jelly:find_closest_surface/main
execute if score $contact retina.__variable__ matches 1.. run scoreboard players operation $block_distance retina.__variable__ = $min_distance_to_surface retina.__variable__
scoreboard players operation $hit_block retina.__variable__ = $contact retina.__variable__