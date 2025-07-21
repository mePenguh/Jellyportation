#> jellyportation:recall/destination/loadcheck.mcfunction
# 
# @calledby     [F] jellyportation:recall/teleport
#

schedule function jellyportation:recall/destination/loadcheck 1t
execute as @e[type=marker, tag=jellyportation.recall_destination] if loaded ~ ~ ~ run function jellyportation:recall/destination/effects