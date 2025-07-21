#> jellyportation:loot/append/chest.mcfunction
# 
# @calledby     [F] jellyportation:loot/get_target/abandoned_mineshaft  -  with storage jellyportation:main Player.Loot
#

$execute unless score @s jellyportation.loot_chance matches 1..$(Chance) run return fail
$loot insert $(X) $(Y) $(Z) loot jellyportation:recall_jelly
$playsound minecraft:entity.glow_squid.ambient block @s $(X) $(Y) $(Z) 2 1
$particle minecraft:ominous_spawning $(X) $(Y) $(Z) .55 .55 .55 0.01 40 normal @a