


execute unless block ~ ~ ~ minecraft:bell run function tp:structure/destroy

execute unless score @s tpUpgraded matches 1 unless block ~ ~-1 ~ minecraft:stone_bricks run function tp:structure/destroy
execute unless score @s tpUpgraded matches 1 unless block ~-1 ~-1 ~ minecraft:stone_brick_stairs run function tp:structure/destroy
execute unless score @s tpUpgraded matches 1 unless block ~1 ~-1 ~ minecraft:stone_brick_stairs run function tp:structure/destroy
execute unless score @s tpUpgraded matches 1 unless block ~ ~-1 ~-1 minecraft:stone_brick_stairs run function tp:structure/destroy
execute unless score @s tpUpgraded matches 1 unless block ~ ~-1 ~1 minecraft:stone_brick_stairs run function tp:structure/destroy
execute unless score @s tpUpgraded matches 1 unless block ~2 ~ ~2 minecraft:stone_brick_wall run function tp:structure/destroy
execute unless score @s tpUpgraded matches 1 unless block ~2 ~ ~-2 minecraft:stone_brick_wall run function tp:structure/destroy
execute unless score @s tpUpgraded matches 1 unless block ~-2 ~ ~2 minecraft:stone_brick_wall run function tp:structure/destroy
execute unless score @s tpUpgraded matches 1 unless block ~-2 ~ ~-2 minecraft:stone_brick_wall run function tp:structure/destroy

execute if score @s tpUpgraded matches 1 unless block ~ ~1 ~ minecraft:air run clone ~ ~1 ~ ~ ~1 ~ ~ ~-1 ~
execute if score @s tpUpgraded matches 1 unless block ~ ~1 ~ minecraft:air run setblock ~ ~1 ~ minecraft:air
