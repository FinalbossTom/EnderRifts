
execute as @p at @s run scoreboard players set @s tpNotification 100

## Destination Check
execute if score @e[tag=tpLoc,distance=..6,limit=1] tpdestination matches 0 run tellraw @a[scores={tpbell=1}] ["",{"text":"[FAILURE]","color":"red"},{"text":" This Teleported does not have a Destination! "},{"text":"[?]","color":"light_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Craft a "},{"text":"Compass","color":"aqua"},{"text":" and drop it into the Teleporter in order to connect, to the "},{"text":"nearest","bold":"true"},{"text":" Teleporter. Otherwise, "},{"text":"rename it","color":"aqua"},{"text":" in order to connect to the Teleporter with the "},{"text":"same Name.","bold":"true"}]}}]

## Fuel Check
execute if score @e[tag=tpFuel,distance=..6,limit=1] tpFuel matches 0 run tellraw @a[scores={tpbell=1}] ["",{"text":"[FAILURE]","color":"red"},{"text":" This Teleporter does not have enough Fuel! "},{"text":"[?]","color":"light_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Craft "},{"text":"[Teleporter Fuel]","color":"gold"},{"text":" and drop it into the Teleporter.\nYou can find the Recipe as a "},{"text":"Barrier","color":"red"},{"text":" inside your Recipebook."}]}}]

## Execute Warp-Sequence
execute as @a[distance=..8,limit=1,sort=nearest] at @s if entity @e[tag=tpDum,distance=..6,scores={tpTick=-1}] if score @e[tag=tpLoc,distance=..6,limit=1] tpdestination matches 1.. if score @e[tag=tpFuel,distance=..6,limit=1] tpFuel matches 1.. run scoreboard players set @e[tag=tpDum,distance=..6,scores={tpTick=-1}] tpTick 0
scoreboard players reset @s tpbell

