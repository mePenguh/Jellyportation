#> jellyportation:loot/append/chest/insert.mcfunction
# 
# @calledby     [F] jellyportation:loot/append/chest/pick_slot  -  with storage jellyportation:main Player.Loot.Slot
#

$loot replace block ~ ~ ~ container.$(Picked) loot jellyportation:recall_jelly
playsound minecraft:entity.glow_squid.ambient block @s ~ ~ ~ 2 1
particle minecraft:ominous_spawning ~ ~ ~ .55 .55 .55 0.01 40 normal @a