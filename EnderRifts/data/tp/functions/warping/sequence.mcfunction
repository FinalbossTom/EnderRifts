


## This function is a mess.
## Guessing i was high or something when i wrote this...



execute if score @s tpTick matches 0 if score @s tpUpgraded matches 1 run scoreboard players set @s tpTick 280

## Messages
execute if score @s tpTick matches 0 run tellraw @a[distance=..3.2] {"text":"Charging Teleporter...","color":"blue"}
execute if score @s tpTick matches 141 run tellraw @a[distance=..3.2] ["",{"text":"Teleporter charge at ","color":"blue"},{"text":"50%","bold":true,"color":"blue"}]
execute if score @s tpTick matches 300 run tellraw @a[distance=..3.2] {"text":"Teleporter ready.\nA Rift will now be opened.","color":"blue"}


## Teleport indicator Effect
execute if score @s tpTick matches 0..340 as @e[type=!armor_stand,type=!area_effect_cloud,distance=..3.2] at @s anchored feet positioned ^ ^ ^ positioned ~ ~0.5 ~ run particle minecraft:portal ~ ~ ~ 0.2 0.5 0.2 0.2 10 normal
execute if score @s tpTick matches 340..400 as @e[type=!armor_stand,type=!area_effect_cloud,distance=..3.2] at @s anchored eyes positioned ^ ^ ^ positioned ~ ~ ~ run particle minecraft:dust 0.7 0 1 6 ~ ~ ~ 0.3 0.5 0.3 0 3 normal


## Stage 1 - Tick 0 to 140
execute if score @s tpTick matches 0..140 run execute as @e[tag=tpEffWarp,distance=..5] at @s anchored feet positioned ^1 ^ ^ positioned ~ ~0.2 ~ run particle minecraft:end_rod ^-4 ^ ^ 0 0.01 0 0.01 3 normal
execute if score @s tpTick matches 0..140 as @e[tag=tpEffWarp,distance=..5] at @s run tp @s ~ ~ ~ ~5 ~
execute if score @s tpTick matches 0 as @e[tag=tpEffWarp,distance=..5] at @s run playsound minecraft:block.portal.ambient block @a[distance=..16] ~ ~ ~ 1 0.7
execute if score @s tpTick matches 80 as @e[tag=tpEffWarp,distance=..5] at @s run playsound minecraft:block.portal.ambient block @a[distance=..16] ~ ~ ~ 1 0.7
execute if score @s tpTick matches 160 as @e[tag=tpEffWarp,distance=..5] at @s run playsound minecraft:block.portal.ambient block @a[distance=..16] ~ ~ ~ 1 0.7
execute if score @s tpTick matches 240 as @e[tag=tpEffWarp,distance=..5] at @s run playsound minecraft:block.portal.ambient block @a[distance=..16] ~ ~ ~ 1 0.7


## Stage 2 - Tick 141 to 280
execute if score @s tpTick matches 141..280 as @e[tag=tpEffWarp,distance=..5] at @s anchored feet positioned ^1 ^ ^ run execute positioned ~ ~0.2 ~ run particle minecraft:end_rod ^-4 ^ ^ 0 0.01 0 0.01 3 normal
execute if score @s tpTick matches 141..280 as @e[tag=tpEffWarp,distance=..5] at @s run tp @s ~ ~ ~ ~10 ~


## Final Stage - Tick 281 to 400
execute if score @s tpTick matches 340 run effect give @e[type=!armor_stand,type=!area_effect_cloud,distance=..3.5] minecraft:levitation 3 0 true
execute if score @s tpTick matches 340 run effect give @e[type=!armor_stand,type=!area_effect_cloud,distance=..3.5] minecraft:slow_falling 5 0 true
execute if score @s tpTick matches 340 run effect give @e[type=!armor_stand,type=!area_effect_cloud,distance=..3.5] minecraft:slowness 4 255 true
execute if score @s tpTick matches 360 run effect give @e[type=!armor_stand,type=!area_effect_cloud,distance=..3.5] minecraft:blindness 4 0 true

execute if score @s tpTick matches 281..400 as @e[tag=tpEffWarp,distance=..5] at @s anchored feet positioned ^1 ^ ^ run execute positioned ~ ~0.2 ~ run particle minecraft:end_rod ^2 ^ ^ 0 0.01 0 0.01 3 normal
execute if score @s tpTick matches 281..400 as @e[tag=tpEffWarp,distance=..5] at @s anchored feet positioned ^1 ^ ^ run execute positioned ~ ~0.2 ~ run particle minecraft:end_rod ^-4 ^ ^ 0 0.01 0 0.01 3 normal

execute if score @s tpTick matches 320..400 as @e[tag=tpEffWarp,distance=..5] at @s anchored feet positioned ^ ^ ^ run execute positioned ~ ~0.2 ~ run particle minecraft:dust 0.8 0 1 3 ^ ^ ^ 1.2 0.04 1.2 0 7 normal
execute if score @s tpTick matches 320..400 as @e[tag=tpEffWarp,distance=..5] at @s anchored feet positioned ^ ^ ^ run execute positioned ~ ~0.2 ~ run particle minecraft:dust 0.6 0 0.6 3 ^ ^ ^ 1.2 0.04 1.2 0 7 normal
execute if score @s tpTick matches 281..320 as @e[tag=tpEffWarp,distance=..5] at @s run tp @s ~ ~0.05 ~ ~14 ~
execute if score @s tpTick matches 320 as @e[tag=tpEffWarp,distance=..5] at @s run playsound minecraft:entity.wither.death block @a[distance=..16] ~ ~ ~ 0.2 0.2

execute if score @s tpTick matches 320..400 at @s run function tp:warping/forcefield

execute if score @s tpTick matches 399 as @e[type=!armor_stand,type=!area_effect_cloud,distance=..4] at @s run particle minecraft:dust 0.7 0 1 7 ~ ~1 ~ 0.2 1 0.2 0 30 normal

execute if score @s tpUpgraded matches 1 if score @s tpTick matches 399 run effect give @e[type=!armor_stand,type=!area_effect_cloud,distance=..3.5] minecraft:regeneration 60 0 true
execute if score @s tpUpgraded matches 1 if score @s tpTick matches 399 run effect give @e[type=!armor_stand,type=!area_effect_cloud,distance=..3.5] minecraft:speed 60 1 true
execute if score @s tpUpgraded matches 1 if score @s tpTick matches 399 run effect give @e[type=!armor_stand,type=!area_effect_cloud,distance=..3.5] minecraft:haste 60 1 true
execute if score @s tpUpgraded matches 1 if score @s tpTick matches 399 run effect give @e[type=!armor_stand,type=!area_effect_cloud,distance=..3.5] minecraft:night_vision 60 0 true


scoreboard players add @s tpTick 1
execute if score @s tpTick matches 400.. as @e[tag=tpEffWarp,distance=..5] at @s run tp @e[tag=tpEffAmbient,limit=1,sort=nearest]
execute if score @s tpTick matches 401.. run function tp:warping/warp
