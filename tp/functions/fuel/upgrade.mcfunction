


## Check for nearest Teleporter and upgrade it


playsound minecraft:entity.elder_guardian.curse block @a[distance=..16] ~ ~ ~ 0.2 0.3
playsound minecraft:block.end_portal.spawn block @a[distance=..16] ~ ~ ~ 0.2 1
scoreboard players set @e[tag=tpDum,limit=1,sort=nearest,distance=..3] tpUpgraded 1

scoreboard players set @e[tag=tpFuel,limit=1,sort=nearest,distance=..3] tpFuel 100
execute as @e[tag=tpFuel,limit=1,sort=nearest,distance=..3] at @s run function tp:fuel/update

tellraw @a ["",{"selector":"@p"},{"text":" has just "},{"text":"upgraded their Teleporter!","color":"gold"}]

kill @e[type=minecraft:item,nbt={Item:{tag:{tpPoweredCell:1b}}}]
