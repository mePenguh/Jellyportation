#> jellyportation:loot/append/ini.mcfunction
# 
# @calledby     [F] jellyportation:loot/get_target/abandoned_mineshaft  -  with storage jellyportation:main Player.Loot
#

$execute unless score @s jellyportation.loot_chance matches 1..$(Chance) run return fail

data remove storage jellyportation:main Player.Loot.Slots

$execute unless items block $(X) $(Y) $(Z) container.0 * run data modify storage jellyportation:main Player.Loot.Slots.Free append value 0
$execute unless items block $(X) $(Y) $(Z) container.1 * run data modify storage jellyportation:main Player.Loot.Slots.Free append value 1
$execute unless items block $(X) $(Y) $(Z) container.2 * run data modify storage jellyportation:main Player.Loot.Slots.Free append value 2
$execute unless items block $(X) $(Y) $(Z) container.3 * run data modify storage jellyportation:main Player.Loot.Slots.Free append value 3
$execute unless items block $(X) $(Y) $(Z) container.4 * run data modify storage jellyportation:main Player.Loot.Slots.Free append value 4
$execute unless items block $(X) $(Y) $(Z) container.5 * run data modify storage jellyportation:main Player.Loot.Slots.Free append value 5
$execute unless items block $(X) $(Y) $(Z) container.6 * run data modify storage jellyportation:main Player.Loot.Slots.Free append value 6
$execute unless items block $(X) $(Y) $(Z) container.7 * run data modify storage jellyportation:main Player.Loot.Slots.Free append value 7
$execute unless items block $(X) $(Y) $(Z) container.8 * run data modify storage jellyportation:main Player.Loot.Slots.Free append value 8
$execute unless items block $(X) $(Y) $(Z) container.9 * run data modify storage jellyportation:main Player.Loot.Slots.Free append value 9
$execute unless items block $(X) $(Y) $(Z) container.10 * run data modify storage jellyportation:main Player.Loot.Slots.Free append value 10
$execute unless items block $(X) $(Y) $(Z) container.11 * run data modify storage jellyportation:main Player.Loot.Slots.Free append value 11
$execute unless items block $(X) $(Y) $(Z) container.12 * run data modify storage jellyportation:main Player.Loot.Slots.Free append value 12
$execute unless items block $(X) $(Y) $(Z) container.13 * run data modify storage jellyportation:main Player.Loot.Slots.Free append value 13
$execute unless items block $(X) $(Y) $(Z) container.14 * run data modify storage jellyportation:main Player.Loot.Slots.Free append value 14
$execute unless items block $(X) $(Y) $(Z) container.15 * run data modify storage jellyportation:main Player.Loot.Slots.Free append value 15
$execute unless items block $(X) $(Y) $(Z) container.16 * run data modify storage jellyportation:main Player.Loot.Slots.Free append value 16
$execute unless items block $(X) $(Y) $(Z) container.17 * run data modify storage jellyportation:main Player.Loot.Slots.Free append value 17
$execute unless items block $(X) $(Y) $(Z) container.18 * run data modify storage jellyportation:main Player.Loot.Slots.Free append value 18
$execute unless items block $(X) $(Y) $(Z) container.19 * run data modify storage jellyportation:main Player.Loot.Slots.Free append value 19
$execute unless items block $(X) $(Y) $(Z) container.20 * run data modify storage jellyportation:main Player.Loot.Slots.Free append value 20
$execute unless items block $(X) $(Y) $(Z) container.21 * run data modify storage jellyportation:main Player.Loot.Slots.Free append value 21
$execute unless items block $(X) $(Y) $(Z) container.22 * run data modify storage jellyportation:main Player.Loot.Slots.Free append value 22
$execute unless items block $(X) $(Y) $(Z) container.23 * run data modify storage jellyportation:main Player.Loot.Slots.Free append value 23
$execute unless items block $(X) $(Y) $(Z) container.24 * run data modify storage jellyportation:main Player.Loot.Slots.Free append value 24
$execute unless items block $(X) $(Y) $(Z) container.25 * run data modify storage jellyportation:main Player.Loot.Slots.Free append value 25
$execute unless items block $(X) $(Y) $(Z) container.26 * run data modify storage jellyportation:main Player.Loot.Slots.Free append value 26

execute store result score @s jellyportation.free_slots run data get storage jellyportation:main Player.Loot.Slots.Free
scoreboard players remove @s jellyportation.free_slots 1
execute store result storage jellyportation:main Player.Loot.Slot.Count int 1 run scoreboard players get @s jellyportation.free_slots

$execute positioned $(X) $(Y) $(Z) run function jellyportation:loot/append/chest/pick_slot with storage jellyportation:main Player.Loot.Slot