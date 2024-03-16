scoreboard objectives setdisplay sidebar
execute if data storage totk:fuse Item run summon item ~ ~ ~ {Item:{id:"minecraft:structure_void",Count:1b},PickupDelay:10s,Tags:["totk.unfuse"]}
execute if data storage totk:fuse Item as @e[tag=totk.unfuse] run data modify entity @s Item set from storage totk:fuse Item
execute if data storage totk:fuse Item as @e[tag=totk.unfuse] run data remove storage totk:fuse Item
tag @e remove totk.unfuse
scoreboard players set @a totk.enabled 0
scoreboard players reset @a zelda.totk

tellraw @a [{"text": "[MLZELDA] "},{"text": "Tears of the Kingdom features disabled!","color": "red"}]