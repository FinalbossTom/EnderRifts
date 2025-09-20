
execute as @e[tag=tpDum] run scoreboard players add @s tpUpgraded 0
execute as @e[tag=tpDum] at @s if score @s tpUpgraded matches 0 run setblock ~ ~ ~ chest{Items:[{Slot:0b,id:"minecraft:end_crystal",Count:1b},{Slot:1b,id:"minecraft:experience_bottle",Count:8b},{Slot:14b,id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"text":"Refund"}',Lore:['{"text":"Teleporters have undergone a  Rework.","color":"dark_purple"}','{"text":"This chest contains everything,"}','{"text":"that you used for your Teleporter."}','{"text":"If you wish to build a new one,"}','{"text":"please use /trigger teleporters"}']}}}],CustomName:'{"text":"Teleporter Refund"}'} replace
execute as @e[tag=tpDum] at @s if score @s tpUpgraded matches 1 run setblock ~ ~ ~ chest{Items:[{Slot:0b,id:"minecraft:end_crystal",Count:1b},{Slot:1b,id:"minecraft:experience_bottle",Count:8b},{Slot:2b,id:"minecraft:ender_pearl",Count:4b},{Slot:3b,id:"minecraft:gold_block",Count:2b},{Slot:4b,id:"minecraft:nether_star",Count:1b},{Slot:5b,id:"minecraft:diamond",Count:1b},{Slot:6b,id:"minecraft:compass",Count:1b},{Slot:14b,id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"text":"Refund"}',Lore:['{"text":"Teleporters have undergone a  Rework.","color":"dark_purple"}','{"text":"This chest contains everything,"}','{"text":"that you used for your Teleporter."}','{"text":"If you wish to build a new one,"}','{"text":"please use /trigger teleporters"}']}}}],CustomName:'{"text":"Teleporter Refund"}'} replace

execute as @e[tag=tpDum] at @s run kill @e[distance=..1.5]

scoreboard objectives remove tpbell
scoreboard objectives remove tpchecked
scoreboard objectives remove tpdestination
scoreboard objectives remove tpidcompare
scoreboard objectives remove tptagCheck
scoreboard objectives remove tpteleported
scoreboard objectives remove tpFuel
scoreboard objectives remove tpFuelCrafted
scoreboard objectives remove tpids
scoreboard objectives remove tpportalframe
scoreboard objectives remove tpTick
scoreboard objectives remove tpUpgraded
scoreboard objectives remove tpVar
scoreboard objectives remove tpNameVisible
scoreboard objectives remove tpNotification
