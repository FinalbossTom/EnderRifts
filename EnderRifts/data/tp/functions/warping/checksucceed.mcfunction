

## Set Destination and reset all teleporters

tellraw @p ["",{"text":"[Success]","color":"green"},{"text":" Your Teleporter is now connected."}]

tag @e[tag=tpDum,scores={tpchecked=0},distance=6..,limit=1,sort=nearest] add target
tag @e[tag=tpDum,scores={tpchecked=0},distance=6..,limit=1,sort=nearest] add targeted
execute as @e[tag=target] at @s run tag @e[tag=tpMain,sort=nearest,limit=1] add targetMain
tag @e[tag=tpLoc,distance=..6,limit=1,sort=nearest] add start

execute as @e[tag=target,limit=1,sort=nearest] at @s run scoreboard players operation Currentid tpVar = @s tpids
execute as @e[tag=start,limit=1,sort=nearest] at @s run scoreboard players operation @s tpdestination = Currentid tpVar

execute as @e[tag=start] at @s run playsound minecraft:block.beacon.activate block @a[distance=..16] ~ ~ ~ 1 0.7
execute as @e[tag=start] at @s run playsound minecraft:block.beacon.activate block @a[distance=..16] ~ ~ ~ 1 0.5
execute as @e[tag=start] at @s run playsound minecraft:block.beacon.activate block @a[distance=..16] ~ ~ ~ 1 0.3

data modify entity @e[tag=start,limit=1] CustomName set from entity @e[tag=targetMain,limit=1] CustomName

scoreboard players set Checking tpVar 0
scoreboard players set @e[tag=tpDum] tpchecked 0

tag @e[tag=target] remove target
tag @e[tag=targetMain] remove targetMain
tag @e[tag=start] remove start

kill @s
