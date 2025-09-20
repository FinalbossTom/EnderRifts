

## Reset if nothing was found


tellraw @p ["",{"text":"[Failure]","color":"red"},{"text":" No Teleporter with this Name exists."}]

scoreboard players set Checking tpVar 0
scoreboard players set @e[tag=tpDum] tpchecked 0
execute as @e[tag=tpDum] at @s run data modify entity @s CustomName set from entity @e[tag=tpMain,limit=1,sort=nearest] CustomName
kill @s
