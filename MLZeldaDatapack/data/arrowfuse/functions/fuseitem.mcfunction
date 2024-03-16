execute as @a store result score @s totk.lookup run data get entity @s Rotation[1] 1
execute as @a[scores={totk.lookup=-90,totk.dropitem=1..,totk.hasarm=1..}] at @s as @e[type=item,limit=1,sort=nearest] if data storage totk:fuse Item at @p run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:structure_void",Count:1b},PickupDelay:1s,Tags:["totk.unfuse"]}
execute if data storage totk:fuse Item as @e[type=item,tag=totk.unfuse] run data modify entity @s Item set from storage totk:fuse Item
execute if data storage totk:fuse Item as @e[type=item,tag=totk.unfuse] run data remove storage totk:fuse Item
execute as @a[scores={totk.lookup=-90,totk.dropitem=1..,totk.hasarm=1..}] at @s as @e[type=item,limit=1,sort=nearest,tag=!totk.unfuse] unless data storage totk:fuse Item run data modify storage totk:fuse Item set from entity @s Item
execute as @a[scores={totk.lookup=-90,totk.dropitem=1..,totk.hasarm=1..}] at @s as @e[type=item,limit=1,sort=nearest,tag=!totk.unfuse] run kill @s
execute as @a[scores={totk.dropitem=1..}] run scoreboard players reset @s totk.dropitem