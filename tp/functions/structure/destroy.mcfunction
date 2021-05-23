

fill ~ ~ ~ ~ ~ ~ minecraft:air
forceload remove ~ ~

execute as @e[tag=tpDum,distance=..3] at @s run particle minecraft:dust 0.7 0 1 7 ~ ~1 ~ 2 4 2 0 200 normal
execute as @e[tag=tpDum,distance=..3] at @s run particle minecraft:squid_ink ~ ~0.4 ~ 0.3 0.2 0.3 0.01 200 normal
execute as @e[tag=tpDum,distance=..3] at @s run particle minecraft:dragon_breath ~ ~ ~ 1 1 1 0.02 200 normal

execute as @e[tag=tpDum,distance=..3] at @s run playsound minecraft:entity.wither.break_block block @a[distance=..16] ~ ~ ~ 0.2 0.3
execute as @e[tag=tpDum,distance=..3] at @s run playsound minecraft:entity.firework_rocket.twinkle block @a[distance=..16] ~ ~ ~ 0.5 0.2

execute as @e[tag=tpDum,distance=..3] at @s if score @s tpUpgraded matches 1 run summon item ~ ~0.2 ~ {Item:{id:"minecraft:diamond",Count:1b,tag:{display:{Name:'{"text":"Powered Teleporter Cell","color":"dark_purple","bold":true}',Lore:['{"text":"Dropping this item near"}','{"text":"a Teleporter will grant"}','{"text":"it several upgrades:"}','{"text":"- Infinite Fuel","color":"gold"}','{"text":"- Faster Charge","color":"gold"}','{"text":"- Effects on Travel","color":"gold"}','{"text":"- No Structure needed","color":"gold"}','{"text":"(only the bell)","color":"red","italic":true}','{"text":"Destroying the Bell will drop this item","color":"dark_gray","italic":true}']},tpPoweredCell:1b,Enchantments:[{}]}}}

kill @e[type=minecraft:item,distance=..3,nbt={Item:{id:"minecraft:bell"}}]
kill @e[type=minecraft:area_effect_cloud,distance=..3]
kill @e[type=minecraft:armor_stand,distance=..3]
