# Break if block isn't budding amethyst anymore
execute unless block ~ ~ ~ minecraft:budding_amethyst run function silktouch_amethyst:actions/destroy
# execute unless block ~ ~ ~ minecraft:budding_amethyst if score doTileDrops hasSilkTouch matches 1 run function silktouch_amethyst:actions/destroy
execute unless block ~ ~ ~ minecraft:budding_amethyst run kill @s

#Kill if there isn't a valid player around
execute unless entity @a[scores={hasSilkTouch=1},distance=..7] run kill @s