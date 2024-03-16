effect give @e[tag=totk.skyisland,distance=0..] levitation 4 127 true
execute as @e[distance=0..,nbt={active_effects:[{id:"minecraft:levitation",amplifier:127b}]},tag=totk.skyisland] run tag @s remove totk.skyisland
execute as @e[type=phantom,distance=0..] run effect give @s fire_resistance infinite 0 true
execute as @e at @s if score @s totk.height matches ..0 run tag @s remove totk.skyisland
execute as @e[type=!#arrows] at @s if score @s totk.height matches ..0 in minecraft:overworld run tp @s ~ 512 ~ ~ ~