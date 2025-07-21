function retina_jelly:find_closest_surface/ray_intersects_with_surface
data modify storage retina_jelly:output HitFace set value 'North'
execute if score $check_for_head retina.__variable__ matches 1.. if score $Y_intersection retina.__variable__ >= $head_Y retina.__variable__ run data modify storage retina_jelly:output HitEntityHead set value true