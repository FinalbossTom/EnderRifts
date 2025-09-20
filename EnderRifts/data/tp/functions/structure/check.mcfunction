
execute store success score @s tptagCheck run data get entity @s Item.tag
execute if block ~ ~-1 ~ minecraft:stone_bricks if block ~-1 ~-1 ~ minecraft:stone_brick_stairs if block ~1 ~-1 ~ minecraft:stone_brick_stairs if block ~ ~-1 ~-1 minecraft:stone_brick_stairs if block ~ ~-1 ~1 minecraft:stone_brick_stairs if block ~2 ~ ~2 minecraft:stone_brick_wall if block ~2 ~ ~-2 minecraft:stone_brick_wall if block ~-2 ~ ~2 minecraft:stone_brick_wall if block ~-2 ~ ~-2 minecraft:stone_brick_wall run scoreboard players add @s tptagCheck 2
execute if score @s tptagCheck matches 3 run function tp:structure/create
