#> jellyportation:recall/destination/effects.mcfunction
# 
# @calledby     [F] jellyportation:recall/destination/effects
#

execute as @p at @s run playsound entity.player.teleport player @a ~ ~ ~ 1 1 1 
execute as @p at @s run function jellyportation:effect/particle/appear
kill @s
execute unless entity @e[type=marker,tag=jellyportation.recall_destination] run schedule clear jellyportation:recall/destination/loadcheck