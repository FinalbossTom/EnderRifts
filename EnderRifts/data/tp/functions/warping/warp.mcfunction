

execute as @e[tag=tpDum] at @s run scoreboard players operation @s tpidcompare = @s tpids
execute as @e[tag=tpLoc,limit=1,sort=nearest] at @s run scoreboard players operation @e[tag=tpDum] tpidcompare -= @s tpdestination
scoreboard players set @e[tag=tpDum,scores={tpidcompare=0},limit=1,sort=nearest] tpteleported 1000
execute as @e[tag=tpLoc,limit=1,sort=nearest] at @s run scoreboard players set @e[type=!armor_stand,type=!area_effect_cloud,distance=..3.5] tpteleported 200
execute as @e[tag=tpLoc,limit=1,sort=nearest] at @s run tp @e[type=!armor_stand,type=!area_effect_cloud,distance=..3.5] @e[tag=tpDum,scores={tpidcompare=0},limit=1,sort=nearest]

execute unless score @s tpUpgraded matches 1 run scoreboard players remove @e[tag=tpFuel,limit=1,sort=nearest] tpFuel 1
execute unless score @s tpUpgraded matches 1 as @e[tag=tpFuel,limit=1,sort=nearest] at @s run function tp:fuel/update

function tp:warping/reset
