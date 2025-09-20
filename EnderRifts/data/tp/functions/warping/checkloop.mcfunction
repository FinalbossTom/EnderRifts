

## Loop this

execute store success score Result tpVar run data modify entity @e[scores={tpchecked=0},limit=1,sort=nearest,distance=6..] CustomName set from entity @s Item.tag.display.Name
execute if score Result tpVar matches 0 run function tp:warping/checksucceed
execute as @e[scores={tpchecked=0},limit=1,sort=nearest,distance=6..] at @s run scoreboard players set @s tpchecked 1

execute unless entity @e[tag=tpDum,scores={tpchecked=0},distance=6..] if score Checking tpVar matches 1 run function tp:warping/checkfail
