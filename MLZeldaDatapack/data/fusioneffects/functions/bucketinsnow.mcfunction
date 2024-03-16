setblock ~ ~ ~ air
data modify storage totk:fuse Item set value {id:"minecraft:powder_snow_bucket",Count:1b}
scoreboard players reset fuse totk.fusecheck
summon item ~ ~ ~ {Item:{id:"minecraft:structure_void",Count:1b},PickupDelay:10s,Tags:["totk.unfuse"]}
kill @s