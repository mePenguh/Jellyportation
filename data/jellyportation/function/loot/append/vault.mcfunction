#> jellyportation:loot/append/chest.mcfunction
# 
# @calledby     [F] jellyportation:loot/get_target/abandoned_mineshaft  -  with storage jellyportation:main Player.Loot
#

$execute unless score @s jellyportation.loot_chance matches 1..$(Chance) run return fail
$execute positioned $(X) $(Y) $(Z) run summon ominous_item_spawner ~ ~1.125 ~ {spawn_item_after_ticks:40,item:{id:"minecraft:music_disc_cat",count:1,components:{"minecraft:item_name": "Recall Jelly","minecraft:item_model": "jellyportation:recall_jelly","minecraft:rarity": "rare","minecraft:custom_data": {"recall_jelly": true},"!minecraft:jukebox_playable": {},"minecraft:consumable": {"consume_seconds": 2.4,"animation": "eat","sound": "minecraft:entity.glow_squid.ambient","has_consume_particles": true}}}}

