
execute as @s at @s run tp @s ~ ~ ~ ~90 ~
execute if score @e[tag=tpLoc,limit=1,sort=nearest,distance=..3] tpdestination matches 1.. anchored feet positioned ^1 ^ ^ run execute positioned ~ ~1 ~ run particle minecraft:dust 0.7 0 1 2 ^1 ^ ^2 0 0.5 0 0.2 6 normal
