
## Loop the Timer and reset if maxed
scoreboard players add Timer tpVar 1
execute if score Timer tpVar matches 21.. run scoreboard players set Timer tpVar 0

## Check for EndCrystal presence and try to create Teleporter.
execute if score Timer tpVar matches 20 as @e[type=item,nbt={Item:{id:"minecraft:end_crystal"}}] at @s unless entity @e[tag=tpDum,distance=..12] run function tp:structure/check

## Check all Strucs for damage
execute if score Timer tpVar matches 20 as @e[tag=tpDum] at @s run function tp:structure/damage

## All compasses check for nearby Teleport-AEC's
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:compass"}}] at @s if entity @e[tag=tpMain,distance=..3] unless score Checking tpVar matches 1 run function tp:warping/check
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:compass"}}] at @s if score Checking tpVar matches 1 run function tp:warping/checkloop

## Check players for ringing bells. This triggers teleportation
execute as @a[scores={tpbell=1..}] at @s run function tp:warping/trigger
execute as @e[tag=tpDum] at @s if score @s tpTick matches 0.. run function tp:warping/sequence

## Check Paper for nearby Teleport-AEC's
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper"}}] at @s if score @e[tag=tpMain,limit=1,sort=nearest,distance=..3] tpNameVisible matches 1 as @e[tag=tpMain,limit=1,sort=nearest,distance=..3] at @s run function tp:other/hide
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper"}}] at @s if score @e[tag=tpMain,limit=1,sort=nearest,distance=..3] tpNameVisible matches 0 as @e[tag=tpMain,limit=1,sort=nearest,distance=..3] at @s run function tp:other/show



## Teleporter Effects
execute as @e[tag=tpEffAmbient] at @s if score @e[tag=tpDum,limit=1,sort=nearest,distance=..4] tpTick matches -1..320 run function tp:effects/ambient
execute as @e[tag=tpEffAmbient] at @s if score @e[tag=tpDum,limit=1,sort=nearest,distance=..4] tpTick matches 320.. run function tp:effects/ambientwarp

## Effects for teleported entities
execute as @e[tag=!tpDum] at @s if score @s tpteleported matches 0.. run function tp:effects/teleported
execute as @e[tag=tpDum] at @s if score @s tpteleported matches 201.. run function tp:effects/teleported


## Crafting and Fuel
execute as @a at @s if score @s tpFuelCrafted matches 1.. run function tp:crafting/givefuelcell
execute as @e[type=minecraft:item,nbt={Item:{tag:{tpFuelitem:1b}}}] at @s unless block ~ ~-0.1 ~ minecraft:air unless score @e[tag=tpFuel,limit=1,sort=nearest,distance=..3] tpFuel matches 10.. run execute as @e[tag=tpFuel,limit=1,sort=nearest,distance=..3] at @s run function tp:fuel/add

execute as @a at @s if score @s tpportalframe matches 1.. run function tp:crafting/givepoweredcell
execute as @e[type=minecraft:item,nbt={Item:{tag:{tpPoweredCell:1b}}}] at @s unless block ~ ~-0.1 ~ minecraft:air run execute as @e[tag=tpDum,limit=1,sort=nearest,distance=..3] at @s unless score @s tpUpgraded matches 1 run function tp:fuel/upgrade
