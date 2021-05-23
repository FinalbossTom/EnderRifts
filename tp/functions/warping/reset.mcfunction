

## Check for Teleportnames and extract id if found
execute as @e[tag=tpLoc,limit=1,sort=nearest] run scoreboard players set @s tpdestination 0
execute as @e[tag=tpLoc,limit=1,sort=nearest] run data modify entity @s CustomName set value '{"text":"<none>"}'
execute as @s run scoreboard players set @s tpTick -1
execute as @e[tag=tpEffAmbient,limit=1,sort=nearest,distance=..3] at @s run tp @s ~ ~ ~ 0 0
