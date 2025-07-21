#> jellyportation:loot/append/chest.mcfunction
# 
# @calledby     [F] jellyportation:loot/get_target/abandoned_mineshaft  -  with storage jellyportation:main Player.Loot
#

$execute unless score @s jellyportation.loot_chance matches 1..$(Chance) run return fail
$execute positioned $(X) $(Y) $(Z) run summon ominous_item_spawner ~ ~1 ~ {spawn_item_after_ticks:40,item:{id:"minecraft:glow_ink_sac",count:1}}