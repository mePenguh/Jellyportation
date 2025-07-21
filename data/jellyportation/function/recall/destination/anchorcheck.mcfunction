#> jellyportation:recall/destination/anchorcheck.mcfunction
# 
# @calledby     [F] jellyportation:recall/destination/wrapup
#

execute if block ~ ~ ~ respawn_anchor[charges=1] run scoreboard players set @s jellyportation.anchor_charges 1
execute if block ~ ~ ~ respawn_anchor[charges=2] run scoreboard players set @s jellyportation.anchor_charges 2
execute if block ~ ~ ~ respawn_anchor[charges=3] run scoreboard players set @s jellyportation.anchor_charges 3
execute if block ~ ~ ~ respawn_anchor[charges=4] run scoreboard players set @s jellyportation.anchor_charges 4

execute if score @s jellyportation.anchor_charges matches 1 run setblock ~ ~ ~ respawn_anchor[charges=0] replace
execute if score @s jellyportation.anchor_charges matches 2 run setblock ~ ~ ~ respawn_anchor[charges=1] replace
execute if score @s jellyportation.anchor_charges matches 3 run setblock ~ ~ ~ respawn_anchor[charges=2] replace
execute if score @s jellyportation.anchor_charges matches 4 run setblock ~ ~ ~ respawn_anchor[charges=3] replace

scoreboard players set @s jellyportation.anchor_charges 0