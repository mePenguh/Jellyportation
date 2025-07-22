#> jellyportation:loot/append/chest/pick_slot.mcfunction
# 
# @calledby     [F] jellyportation:loot/append/chest/init  -  with storage jellyportation:main Player.Loot.Slot
#

$execute store result storage jellyportation:main Player.Loot.Slot.Picked int 1 run random value 0..$(Count)
function jellyportation:loot/append/chest/insert with storage jellyportation:main Player.Loot.Slot