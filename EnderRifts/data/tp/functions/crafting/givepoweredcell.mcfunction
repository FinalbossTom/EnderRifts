

clear @s minecraft:end_portal_frame 1
give @p diamond{display:{Name:'{"text":"Powered Teleporter Cell","color":"dark_purple","bold":true}',Lore:['{"text":"Dropping this item near"}','{"text":"a Teleporter will grant"}','{"text":"it several upgrades:"}','{"text":"- Infinite Fuel","color":"gold"}','{"text":"- Faster Charge","color":"gold"}','{"text":"- Effects on Travel","color":"gold"}','{"text":"- No Structure needed","color":"gold"}','{"text":"(only the bell)","color":"red","italic":true}','{"text":"Destroying the Bell will drop this item","color":"dark_gray","italic":true}']},tpPoweredCell:1b,Enchantments:[{}]} 1

scoreboard players remove @s tpportalframe 1
