execute in totk:skyislands as @a[distance=0..] at @s run function totk:skyislands
execute as @e store result score @s totk.height run data get entity @s Pos[1]
execute in overworld as @e[distance=0..,type=!#arrows] at @s if score @s totk.height matches 513.. run tag @s add totk.skyisland
execute in overworld as @e[distance=0..,type=!#arrows] at @s if score @s totk.height matches 513.. in totk:skyislands run tp @s ~ 68 ~ ~ ~