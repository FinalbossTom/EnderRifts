


## Check Fuel and Update visual accordingly
## (Yes, i am literally checking every possible outcome. No, i do not know how to make this more efficient.)
execute if score @s tpFuel matches 0 run data modify entity @s CustomName set value '[{"text":"Fuel: ","color":"gold"},{"text":"⏹⏹⏹⏹⏹⏹⏹⏹⏹⏹","color":"red"}]'
execute if score @s tpFuel matches 1 run data modify entity @s CustomName set value '[{"text":"Fuel: ","color":"gold"},{"text":"⏹","color":"green"},{"text":"⏹⏹⏹⏹⏹⏹⏹⏹⏹","color":"red"}]'
execute if score @s tpFuel matches 2 run data modify entity @s CustomName set value '[{"text":"Fuel: ","color":"gold"},{"text":"⏹⏹","color":"green"},{"text":"⏹⏹⏹⏹⏹⏹⏹⏹","color":"red"}]'
execute if score @s tpFuel matches 3 run data modify entity @s CustomName set value '[{"text":"Fuel: ","color":"gold"},{"text":"⏹⏹⏹","color":"green"},{"text":"⏹⏹⏹⏹⏹⏹⏹","color":"red"}]'
execute if score @s tpFuel matches 4 run data modify entity @s CustomName set value '[{"text":"Fuel: ","color":"gold"},{"text":"⏹⏹⏹⏹","color":"green"},{"text":"⏹⏹⏹⏹⏹⏹","color":"red"}]'
execute if score @s tpFuel matches 5 run data modify entity @s CustomName set value '[{"text":"Fuel: ","color":"gold"},{"text":"⏹⏹⏹⏹⏹","color":"green"},{"text":"⏹⏹⏹⏹⏹","color":"red"}]'
execute if score @s tpFuel matches 6 run data modify entity @s CustomName set value '[{"text":"Fuel: ","color":"gold"},{"text":"⏹⏹⏹⏹⏹⏹","color":"green"},{"text":"⏹⏹⏹⏹","color":"red"}]'
execute if score @s tpFuel matches 7 run data modify entity @s CustomName set value '[{"text":"Fuel: ","color":"gold"},{"text":"⏹⏹⏹⏹⏹⏹⏹","color":"green"},{"text":"⏹⏹⏹","color":"red"}]'
execute if score @s tpFuel matches 8 run data modify entity @s CustomName set value '[{"text":"Fuel: ","color":"gold"},{"text":"⏹⏹⏹⏹⏹⏹⏹⏹","color":"green"},{"text":"⏹⏹","color":"red"}]'
execute if score @s tpFuel matches 9 run data modify entity @s CustomName set value '[{"text":"Fuel: ","color":"gold"},{"text":"⏹⏹⏹⏹⏹⏹⏹⏹⏹","color":"green"},{"text":"⏹","color":"red"}]'
execute if score @s tpFuel matches 10 run data modify entity @s CustomName set value '[{"text":"Fuel: ","color":"gold"},{"text":"⏹⏹⏹⏹⏹⏹⏹⏹⏹⏹","color":"green"}]'

execute if score @s tpFuel matches 11..20 run function tp:fuel/updatefix

execute if score @s tpFuel matches 100 run data modify entity @s CustomName set value '{"text":"⭐Upgraded⭐","color":"dark_purple","bold":true}'
