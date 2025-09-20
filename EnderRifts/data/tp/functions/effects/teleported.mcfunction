

## Teleporter


execute at @s if score @s tpteleported matches 998 run playsound minecraft:entity.wither.spawn block @a[distance=..16] ~ ~ ~ 0.3 2
execute at @s if score @s tpteleported matches 998 run particle minecraft:dust 0.7 0 1 5 ~ ~1 ~ 1 1 1 0 500 normal

execute at @s if score @s tpteleported matches 600..860 run particle minecraft:portal ~ ~0.4 ~ 1 0.5 1 0.1 5 normal
execute at @s if score @s tpteleported matches 202..600 run particle minecraft:portal ~ ~ ~ 0.2 0 0.2 0 3 normal

execute if score @s tpteleported matches 201 run scoreboard players reset @s teleported

## Entities
execute at @s if score @s tpteleported matches 101..200 anchored feet positioned ^ ^ ^ positioned ~ ~-0.4 ~ run particle minecraft:portal ~ ~ ~ 0.1 0 0.1 0.1 10 normal
execute at @s if score @s tpteleported matches 2..100 anchored feet positioned ^ ^ ^ positioned ~ ~-0.4 ~ run particle minecraft:portal ~ ~ ~ 0 0 0 0 3 normal
execute at @s if score @s tpteleported matches 1 anchored feet positioned ^ ^ ^ positioned ~ ~-0.4 ~ run particle minecraft:portal ~ ~ ~ 1 0 1 0 200 normal

scoreboard players remove @s tpteleported 1
execute if score @s tpteleported matches -1 run scoreboard players reset @s tpteleported
