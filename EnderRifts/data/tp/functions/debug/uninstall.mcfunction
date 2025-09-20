


execute as @e[tag=tpDum] at @s if score @s tpUpgraded matches 1 run setblock ~ ~-1 ~ chest{Items:[{Slot:0b,id:"minecraft:glass_pane",Count:1b},{Slot:1b,id:"minecraft:glass_pane",Count:1b},{Slot:2b,id:"minecraft:glass_pane",Count:1b},{Slot:6b,id:"minecraft:ender_pearl",Count:1b},{Slot:7b,id:"minecraft:compass",Count:1b},{Slot:8b,id:"minecraft:ender_pearl",Count:1b},{Slot:9b,id:"minecraft:glass_pane",Count:1b},{Slot:10b,id:"minecraft:ender_eye",Count:1b},{Slot:11b,id:"minecraft:glass_pane",Count:1b},{Slot:15b,id:"minecraft:gold_block",Count:1b},{Slot:16b,id:"minecraft:nether_star",Count:1b},{Slot:17b,id:"minecraft:gold_block",Count:1b},{Slot:18b,id:"minecraft:glass_pane",Count:1b},{Slot:19b,id:"minecraft:ghast_tear",Count:1b},{Slot:20b,id:"minecraft:glass_pane",Count:1b},{Slot:24b,id:"minecraft:ender_pearl",Count:1b},{Slot:25b,id:"minecraft:diamond",Count:1b},{Slot:26b,id:"minecraft:ender_pearl",Count:1b}]} replace

execute as @e[tag=tpDum] at @s unless score @s tpUpgraded matches 1 run setblock ~ ~-1 ~ chest{Items:[{Slot:0b,id:"minecraft:glass_pane",Count:1b},{Slot:1b,id:"minecraft:glass_pane",Count:1b},{Slot:2b,id:"minecraft:glass_pane",Count:1b},{Slot:9b,id:"minecraft:glass_pane",Count:1b},{Slot:10b,id:"minecraft:ender_eye",Count:1b},{Slot:11b,id:"minecraft:glass_pane",Count:1b},{Slot:18b,id:"minecraft:glass_pane",Count:1b},{Slot:19b,id:"minecraft:ghast_tear",Count:1b},{Slot:20b,id:"minecraft:glass_pane",Count:1b}]} replace


kill @e[distance=..2,type=!player]
