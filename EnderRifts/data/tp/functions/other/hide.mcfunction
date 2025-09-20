
data modify entity @s CustomNameVisible set value 0b
data modify entity @e[tag=tpDec1,limit=1,sort=nearest] CustomName set value '{"text":"Name hidden!","color":"red"}'
scoreboard players set @s tpNameVisible 0
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper"}},limit=1,sort=nearest]
