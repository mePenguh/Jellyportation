#> jellyportation:fountain/locate/loop.mcfunction
# 
# @calledby     [F] jellyportation:fountain/locate/init
#               [F] jellyportation:fountain/locate/loop
#

execute if block ~ ~ ~ bedrock run data modify storage jellyportation:main End.FountainTop set from entity @s Pos[1]
execute if block ~ ~ ~ end_stone run data modify storage jellyportation:main End.Surface set from entity @s Pos[1]
tp @s ~ ~-1 ~
execute positioned 0 -1 0 if entity @s[distance=..1] run return fail
function jellyportation:fountain/locate/loop