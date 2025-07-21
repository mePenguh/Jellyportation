function retina_jelly:traverse/setup
scoreboard players add $k retina.__variable__ 1
execute if score $k retina.__variable__ < $centered_count retina.__variable__ run function retina_jelly:__private__/for_loop/2