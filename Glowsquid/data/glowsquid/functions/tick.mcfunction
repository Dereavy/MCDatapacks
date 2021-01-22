execute as @e[type=item,nbt={Item:{id:"minecraft:glowstone_dust"}}] run execute at @e[type=minecraft:squid] if entity @s[distance= ..1 ] run execute as @e[type=minecraft:squid,distance=..1] run tag @s add glowSquid
execute at @e[tag=glowSquid] run teleport @e[type=item,nbt={Item:{id:"minecraft:glowstone_dust"}},distance=..1] ~ ~-500 ~
execute at @e[tag=glowSquid] run summon minecraft:glow_squid ~ ~ ~
execute at @e[tag=glowSquid] run playsound minecraft:entity.glow_squid.ambient player @p ~ ~ ~ 100
execute as @e[tag=glowSquid] run teleport @s ~ ~-500 ~