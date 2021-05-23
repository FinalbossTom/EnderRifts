


## Check for nearest Teleporter and add to it
particle minecraft:portal ~ ~ ~ 0.3 0.15 0.3 0.03 400 normal
playsound minecraft:block.ender_chest.close block @a[distance=..16] ~ ~ ~ 1 0.1
scoreboard players add @s tpFuel 5
function tp:fuel/update

execute as @e[type=minecraft:item,nbt={Item:{tag:{tpFuelitem:1b}}},distance=..3,limit=1] at @s run particle minecraft:flame ~ ~ ~ 0.3 0.15 0.3 0.03 45 normal
kill @e[type=minecraft:item,nbt={Item:{tag:{tpFuelitem:1b}}},distance=..3,limit=1]
