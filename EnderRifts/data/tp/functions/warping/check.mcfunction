

## Setup and reset checkloop

scoreboard players set Checking tpVar 1
scoreboard players set @e[tag=tpDum] tpchecked 0
scoreboard players set Currentid tpVar 0
execute as @e[tag=tpDum] at @s run data modify entity @s CustomName set from entity @e[tag=tpMain,limit=1,sort=nearest] CustomName
tag @s add tpComp
