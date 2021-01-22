execute as @e[type=item,nbt={Item:{id:"minecraft:glowstone_dust"}}] run execute at @e[type=minecraft:squid] if entity @s[distance= ..1 ] run execute as @e[type=minecraft:squid,distance=..1] run tag @s add glowSquid

execute at @e[tag=glowSquid] run teleport @e[type=item,nbt={Item:{id:"minecraft:glowstone_dust"}},distance=..1] ~ -70 ~

execute at @e[tag=glowSquid] run summon minecraft:glow_squid ~ ~ ~ {Tags:["newSquid"]}
# execute as @e[tag=newSquid] run data merge entity @e[tag=glowSquid,limit=1] 

execute as @e[tag=newSquid] store result entity @s Motion[0] double 0.0000001 run data get entity @e[tag=glowSquid,limit=1] Motion[0] 10000000
execute as @e[tag=newSquid] store result entity @s Motion[1] double 0.0000001 run data get entity @e[tag=glowSquid,limit=1] Motion[1] 10000000
execute as @e[tag=newSquid] store result entity @s Motion[2] double 0.0000001 run data get entity @e[tag=glowSquid,limit=1] Motion[2] 10000000

execute as @e[tag=newSquid] store result entity @e[tag=glowSquid,limit=1] Pos[0] double 0.1 run data get entity @s Pos[0] 10
execute as @e[tag=newSquid] store result entity @e[tag=glowSquid,limit=1] Pos[1] double 0.1 run data get entity @s Pos[1] 10
execute as @e[tag=newSquid] store result entity @e[tag=glowSquid,limit=1] Pos[2] double 0.1 run data get entity @s Pos[2] 10

execute as @e[tag=newSquid] store result entity @s Rotation[0] float 0.0001 run data get entity @e[tag=glowSquid,limit=1] Rotation[0] 10000
execute as @e[tag=newSquid] store result entity @s Rotation[1] float 0.0001 run data get entity @e[tag=glowSquid,limit=1] Rotation[1] 10000

execute as @e[tag=newSquid] run data merge entity @s {Tags:[""]}

execute at @e[tag=glowSquid] run playsound minecraft:entity.glow_squid.ambient player @p ~ ~ ~ 100

execute as @e[tag=glowSquid] run teleport @s ~ -70 ~

# Inspiration to fix the squid vectorial transition glitch since Motion, Position and Rotation aren't the cause.
#
#execute as @e[<shooter>] at @s run summon arrow ^ ^ ^1 {NoGravity:1}
#execute as @e[type=arrow] store result score @s x run data get entity @s Pos[0] 10
#execute as @e[type=arrow] store result score @s y run data get entity @s Pos[1] 10
#execute as @e[type=arrow] store result score @s z run data get entity @s Pos[2] 10
#execute as @e[type=armor_stand] store result score @s x run data get entity @s Pos[0] 10
#execute as @e[type=armor_stand] store result score @s y run data get entity @s Pos[1] 10
#execute as @e[type=armor_stand] store result score @s z run data get entity @s Pos[2] 10
#execute as @e[type=armor_stand] at @s positioned ^ ^ ^1 run scoreboard players operation @e[type=arrow,distance=0] x -= @s x
#execute as @e[type=armor_stand] at @s positioned ^ ^ ^1 run scoreboard players operation @e[type=arrow,distance=0] y -= @s y
#execute as @e[type=armor_stand] at @s positioned ^ ^ ^1 run scoreboard players operation @e[type=arrow,distance=0] z -= @s z
#execute as @e[type=arrow] store result entity @s Motion[0] double 0.1 run scoreboard players get @s x
#execute as @e[type=arrow] store result entity @s Motion[1] double 0.1 run scoreboard players get @s y
#execute as @e[type=arrow] store result entity @s Motion[2] double 0.1 run scoreboard players get @s z