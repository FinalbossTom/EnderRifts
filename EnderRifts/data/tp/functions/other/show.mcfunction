
data modify entity @s CustomNameVisible set value 1b
data modify entity @e[tag=tpDec1,limit=1,sort=nearest] CustomName set value '{"text":"Teleporter Name:","color":"gold","bold":true}'
scoreboard players set @s tpNameVisible 1
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper"}},limit=1,sort=nearest]
