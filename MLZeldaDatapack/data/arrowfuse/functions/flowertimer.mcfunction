execute as @e[type=minecraft:block_display,tag=totk.flower] run scoreboard players add @s totk.flowertime 1
execute as @e[type=minecraft:block_display,tag=totk.torchflower,tag=totk.ceilingsupport] at @s if block ~0.5 ~1 ~0.5 #minecraft:flowersafe run fill ~0.5 ~ ~0.5 ~0.5 ~ ~0.5 air replace light[waterlogged=false]
execute as @e[type=minecraft:block_display,tag=totk.torchflower,tag=totk.ceilingsupport] at @s if block ~0.5 ~1 ~0.5 #minecraft:flowersafe run fill ~0.5 ~ ~0.5 ~0.5 ~ ~0.5 water replace light[waterlogged=true]
execute as @e[type=minecraft:block_display,tag=totk.flower,tag=totk.ceilingsupport] at @s if block ~0.5 ~1 ~0.5 #minecraft:flowersafe run kill @s
execute as @e[type=minecraft:block_display,tag=totk.torchflower,tag=totk.floorsupport] at @s if block ~0.5 ~-1 ~0.5 #minecraft:flowersafe run fill ~0.5 ~ ~0.5 ~0.5 ~ ~0.5 air replace light[waterlogged=false]
execute as @e[type=minecraft:block_display,tag=totk.torchflower,tag=totk.floorsupport] at @s if block ~0.5 ~-1 ~0.5 #minecraft:flowersafe run fill ~0.5 ~ ~0.5 ~0.5 ~ ~0.5 water replace light[waterlogged=true]
execute as @e[type=minecraft:block_display,tag=totk.flower,tag=totk.floorsupport] at @s if block ~0.5 ~-1 ~0.5 #minecraft:flowersafe run kill @s
execute as @e[type=minecraft:block_display,tag=totk.torchflower] at @s if score @s totk.flowertime matches 2400.. run fill ~0.5 ~ ~0.5 ~0.5 ~ ~0.5 air replace light[waterlogged=false]
execute as @e[type=minecraft:block_display,tag=totk.torchflower] at @s if score @s totk.flowertime matches 2400.. run fill ~0.5 ~ ~0.5 ~0.5 ~ ~0.5 water replace light[waterlogged=true]
execute as @e[type=minecraft:block_display,tag=totk.flower] if score @s totk.flowertime matches 2400.. run kill @s
execute as @e[type=minecraft:block_display,tag=totk.flash] at @s if score @s totk.flowertime matches 5.. run fill ~0.5 ~ ~0.5 ~0.5 ~ ~0.5 air replace light
execute as @e[type=minecraft:block_display,tag=totk.flash] if score @s totk.flowertime matches 5.. run kill @s