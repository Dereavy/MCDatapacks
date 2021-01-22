# Detect all players holding a silk touch tool (toggle silk touch tag)
execute as @a run function silktouch_amethyst:detections/hassilktouch

# Detect all blocks around that player that are budding amethyst
# Position an aoe particle cloud at the budding amethyst if it doesn't exist
execute at @a[scores={hasSilkTouch=1}] run function silktouch_amethyst:actions/detect

# At that aoe particle cloud check for air block
execute as @e[type=area_effect_cloud,tag=buddingamethystblock] at @s run function silktouch_amethyst:actions/blocktick

# If there is an air block, check for silk touch player within radius of 4.

# Drop budding amethyst block, kill aoe particle cloud.
