function retina_jelly:__private__/anonymous/3
execute summon marker run function retina_jelly:__private__/anonymous/4
execute if score $expand_entity_hitboxes retina.__variable__ = $expand_entity_hitboxes retina.__variable__ run function retina_jelly:__private__/if_else/5
scoreboard players operation $entity_X0 retina.__variable__ = $entity_frac_X retina.__variable__
scoreboard players operation $entity_X0 retina.__variable__ -= $entity_half_width retina.__variable__
scoreboard players operation $entity_X0 retina.__variable__ > 0 retina.__int__
scoreboard players operation $entity_X1 retina.__variable__ = $entity_frac_X retina.__variable__
scoreboard players operation $entity_X1 retina.__variable__ += $entity_half_width retina.__variable__
scoreboard players operation $entity_X1 retina.__variable__ < 480 retina.__int__
scoreboard players operation $entity_Z0 retina.__variable__ = $entity_frac_Z retina.__variable__
scoreboard players operation $entity_Z0 retina.__variable__ -= $entity_half_width retina.__variable__
scoreboard players operation $entity_Z0 retina.__variable__ > 0 retina.__int__
scoreboard players operation $entity_Z1 retina.__variable__ = $entity_frac_Z retina.__variable__
scoreboard players operation $entity_Z1 retina.__variable__ += $entity_half_width retina.__variable__
scoreboard players operation $entity_Z1 retina.__variable__ < 480 retina.__int__
scoreboard players operation $entity_Y0 retina.__variable__ = $entity_frac_Y retina.__variable__
scoreboard players operation $entity_Y0 retina.__variable__ > 0 retina.__int__
scoreboard players operation $entity_Y1 retina.__variable__ = $entity_frac_Y retina.__variable__
scoreboard players operation $entity_Y1 retina.__variable__ += $entity_height retina.__variable__
scoreboard players operation $entity_Y1 retina.__variable__ < 480 retina.__int__
data modify storage retina_jelly:data Surfaces.Top append value [0,0,0,0,0,0]
data modify storage retina_jelly:data Surfaces.Bottom append value [0,0,0,0,0,0]
data modify storage retina_jelly:data Surfaces.West append value [0,0,0,0,0,0]
data modify storage retina_jelly:data Surfaces.East append value [0,0,0,0,0,0]
data modify storage retina_jelly:data Surfaces.North append value [0,0,0,0,0,0]
data modify storage retina_jelly:data Surfaces.South append value [0,0,0,0,0,0]
execute store result storage retina_jelly:data Surfaces.Top[-1][0] int 1 run scoreboard players get $entity_X0 retina.__variable__
execute store result storage retina_jelly:data Surfaces.Top[-1][1] int 1 run scoreboard players get $entity_Y1 retina.__variable__
execute store result storage retina_jelly:data Surfaces.Top[-1][2] int 1 run scoreboard players get $entity_Z0 retina.__variable__
execute store result storage retina_jelly:data Surfaces.Top[-1][3] int 1 run scoreboard players get $entity_X1 retina.__variable__
execute store result storage retina_jelly:data Surfaces.Top[-1][4] int 1 run scoreboard players get $entity_Y1 retina.__variable__
execute store result storage retina_jelly:data Surfaces.Top[-1][5] int 1 run scoreboard players get $entity_Z1 retina.__variable__
execute store result storage retina_jelly:data Surfaces.Bottom[-1][0] int 1 run scoreboard players get $entity_X0 retina.__variable__
execute store result storage retina_jelly:data Surfaces.Bottom[-1][1] int 1 run scoreboard players get $entity_Y0 retina.__variable__
execute store result storage retina_jelly:data Surfaces.Bottom[-1][2] int 1 run scoreboard players get $entity_Z0 retina.__variable__
execute store result storage retina_jelly:data Surfaces.Bottom[-1][3] int 1 run scoreboard players get $entity_X1 retina.__variable__
execute store result storage retina_jelly:data Surfaces.Bottom[-1][4] int 1 run scoreboard players get $entity_Y0 retina.__variable__
execute store result storage retina_jelly:data Surfaces.Bottom[-1][5] int 1 run scoreboard players get $entity_Z1 retina.__variable__
execute store result storage retina_jelly:data Surfaces.West[-1][0] int 1 run scoreboard players get $entity_X0 retina.__variable__
execute store result storage retina_jelly:data Surfaces.West[-1][1] int 1 run scoreboard players get $entity_Y0 retina.__variable__
execute store result storage retina_jelly:data Surfaces.West[-1][2] int 1 run scoreboard players get $entity_Z0 retina.__variable__
execute store result storage retina_jelly:data Surfaces.West[-1][3] int 1 run scoreboard players get $entity_X0 retina.__variable__
execute store result storage retina_jelly:data Surfaces.West[-1][4] int 1 run scoreboard players get $entity_Y1 retina.__variable__
execute store result storage retina_jelly:data Surfaces.West[-1][5] int 1 run scoreboard players get $entity_Z1 retina.__variable__
execute store result storage retina_jelly:data Surfaces.East[-1][0] int 1 run scoreboard players get $entity_X1 retina.__variable__
execute store result storage retina_jelly:data Surfaces.East[-1][1] int 1 run scoreboard players get $entity_Y0 retina.__variable__
execute store result storage retina_jelly:data Surfaces.East[-1][2] int 1 run scoreboard players get $entity_Z0 retina.__variable__
execute store result storage retina_jelly:data Surfaces.East[-1][3] int 1 run scoreboard players get $entity_X1 retina.__variable__
execute store result storage retina_jelly:data Surfaces.East[-1][4] int 1 run scoreboard players get $entity_Y1 retina.__variable__
execute store result storage retina_jelly:data Surfaces.East[-1][5] int 1 run scoreboard players get $entity_Z1 retina.__variable__
execute store result storage retina_jelly:data Surfaces.North[-1][0] int 1 run scoreboard players get $entity_X0 retina.__variable__
execute store result storage retina_jelly:data Surfaces.North[-1][1] int 1 run scoreboard players get $entity_Y0 retina.__variable__
execute store result storage retina_jelly:data Surfaces.North[-1][2] int 1 run scoreboard players get $entity_Z0 retina.__variable__
execute store result storage retina_jelly:data Surfaces.North[-1][3] int 1 run scoreboard players get $entity_X1 retina.__variable__
execute store result storage retina_jelly:data Surfaces.North[-1][4] int 1 run scoreboard players get $entity_Y1 retina.__variable__
execute store result storage retina_jelly:data Surfaces.North[-1][5] int 1 run scoreboard players get $entity_Z0 retina.__variable__
execute store result storage retina_jelly:data Surfaces.South[-1][0] int 1 run scoreboard players get $entity_X0 retina.__variable__
execute store result storage retina_jelly:data Surfaces.South[-1][1] int 1 run scoreboard players get $entity_Y0 retina.__variable__
execute store result storage retina_jelly:data Surfaces.South[-1][2] int 1 run scoreboard players get $entity_Z1 retina.__variable__
execute store result storage retina_jelly:data Surfaces.South[-1][3] int 1 run scoreboard players get $entity_X1 retina.__variable__
execute store result storage retina_jelly:data Surfaces.South[-1][4] int 1 run scoreboard players get $entity_Y1 retina.__variable__
execute store result storage retina_jelly:data Surfaces.South[-1][5] int 1 run scoreboard players get $entity_Z1 retina.__variable__
execute if entity @s[type=#retina_jelly:item_frame] run function retina_jelly:entity_hitbox/item_frame
tag @s add retina.possible_target
scoreboard players operation @s retina.id = $max retina.id
scoreboard players add $max retina.id 1