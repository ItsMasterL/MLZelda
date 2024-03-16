execute as @e[nbt={active_effects:[{id:"minecraft:luck"}]}] if data storage totk:fuse {Item: {count: 1, id: "minecraft:nether_star"}} at @s run function fusioneffects:obliterate

execute as @e[nbt={active_effects:[{id:"minecraft:luck"}]}] if data storage totk:fuse {Item: {count: 1, id: "minecraft:slime_ball"}} at @s run function fusioneffects:slow
execute as @e[nbt={active_effects:[{id:"minecraft:luck"}]}] if data storage totk:fuse {Item: {count: 1, id: "minecraft:honeycomb"}} at @s run function fusioneffects:slow
execute as @e[nbt={active_effects:[{id:"minecraft:luck"}]}] if data storage totk:fuse {Item: {count: 1, id: "minecraft:magma_cream"}} at @s run function fusioneffects:slow
execute as @e[nbt={active_effects:[{id:"minecraft:luck"}]}] if data storage totk:fuse {Item: {count: 1, id: "minecraft:honey_block"}} at @s run function fusioneffects:slow
execute as @e[nbt={active_effects:[{id:"minecraft:luck"}]}] if data storage totk:fuse {Item: {count: 1, id: "minecraft:slime_block"}} at @s run function fusioneffects:slow

execute as @e[nbt={active_effects:[{id:"minecraft:luck"}]}] run data remove storage totk:fuse Item
execute as @e[nbt={active_effects:[{id:"minecraft:luck"}]}] run effect clear @s luck