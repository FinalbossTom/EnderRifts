fill ~ ~ ~ ~ ~ ~ minecraft:bell
execute align xyz run summon area_effect_cloud ~0.5 ~1.25 ~0.5 {CustomNameVisible:1b,Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["tpDec1"],CustomName:'{"text":"Teleporter Name:","color":"gold","bold":true}'}
execute align xyz run summon area_effect_cloud ~0.5 ~1 ~0.5 {CustomNameVisible:1b,Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["tpMain"],CustomName:'{"text":"<Loading>"}'}
execute align xyz run summon area_effect_cloud ~0.5 ~0.75 ~0.5 {CustomNameVisible:1b,Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["tpDec2"],CustomName:'{"text":"Current Destination:","color":"aqua","italic":true}'}
execute align xyz run summon area_effect_cloud ~0.5 ~0.5 ~0.5 {CustomNameVisible:1b,Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["tpLoc"],CustomName:'{"text":"<none>"}'}
execute align xyz run summon area_effect_cloud ~0.5 ~0.25 ~0.5 {CustomNameVisible:1b,Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["tpFuel"],CustomName:'{"text":"<Loading>"}'}
execute align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["tpDum"],CustomName:'{"text":"tpDum"}'}

execute align xyz run summon armor_stand ~0.5 ~1 ~0.5 {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["tpEffAmbient"]}
execute align xyz run summon armor_stand ~0.5 ~1 ~0.5 {NoGravity:0b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["tpEffWarp"],DisabledSlots:4144959}

data modify entity @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,tag=tpMain] CustomName set from entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:end_crystal"}},limit=1,sort=nearest] Item.tag.display.Name
data modify entity @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,tag=tpDum] CustomName set from entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:end_crystal"}},limit=1,sort=nearest] Item.tag.display.Name

scoreboard players set @e[tag=tpMain,sort=nearest,limit=1,distance=..3] tpNameVisible 1
scoreboard players operation @e[tag=tpDum,sort=nearest,limit=1] tpids = currentID tpids
scoreboard players set @e[tag=tpLoc,sort=nearest,limit=1,distance=..3] tpdestination 0
scoreboard players add currentID tpids 1

scoreboard players set @e[tag=tpFuel,sort=nearest,limit=1] tpFuel 5
execute as @e[tag=tpFuel,sort=nearest,limit=1] at @s run function tp:fuel/update
scoreboard players set @e[tag=tpDum,sort=nearest,limit=1] tpTick -1

summon minecraft:lightning_bolt ~ 255 ~

execute as @e[tag=tpDum,distance=..3] at @s run particle minecraft:dust 0.7 0 1 7 ~ ~1 ~ 2 4 2 0 200 normal
execute as @e[tag=tpDum,distance=..3] at @s run particle minecraft:squid_ink ~ ~0.4 ~ 0.3 0.2 0.3 0.01 200 normal
execute as @e[tag=tpDum,distance=..3] at @s run particle minecraft:dragon_breath ~ ~ ~ 1 1 1 0.02 200 normal

execute as @e[tag=tpDum,distance=..3] at @s run playsound minecraft:entity.wither.break_block block @a[distance=..16] ~ ~ ~ 0.2 1
execute as @e[tag=tpDum,distance=..3] at @s run playsound minecraft:entity.firework_rocket.twinkle block @a[distance=..16] ~ ~ ~ 0.5 1

playsound minecraft:item.firecharge.use block @a[distance=..16] ~ ~ ~ 1 0.4
playsound minecraft:item.trident.thunder block @a[distance=..16] ~ ~ ~ 1 1

scoreboard players set @p tpNotification 100
tellraw @a ["",{"selector":"@p"},{"text":" has just created a "},{"text":"Teleporter","color":"gold"},{"text":"!"}]

forceload add ~ ~

kill @s
