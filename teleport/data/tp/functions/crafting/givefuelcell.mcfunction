

clear @s minecraft:barrier 1
give @s potion{display:{Name:'{"text":"Teleporter Fuel","color":"gold"}',Lore:['{"text":"Drop this near a Teleporter","color":"dark_purple"}','{"text":"to add 5 Fuelcharges to it.","color":"dark_purple"}']},HideFlags:63,tpFuelitem:1b,Enchantments:[{}],CustomPotionColor:2824079} 1

scoreboard players remove @s tpFuelCrafted 1
