playsound entity.slime.attack player @a
execute if data storage totk:fuse {Item: {count: 1, id: "minecraft:honeycomb"}} run particle block honey_block ~ ~ ~ 0 1 0 0 30 force
execute if data storage totk:fuse {Item: {count: 1, id: "minecraft:honey_block"}} run particle block honey_block ~ ~ ~ 0 1 0 0 30 force
execute if data storage totk:fuse {Item: {count: 1, id: "minecraft:slime_ball"}} run particle item_slime ~ ~ ~ 0 1 0 0 30 force
execute if data storage totk:fuse {Item: {count: 1, id: "minecraft:slime_block"}} run particle item_slime ~ ~ ~ 0 1 0 0 30 force
execute if data storage totk:fuse {Item: {count: 1, id: "minecraft:magma_cream"}} run particle item magma_cream ~ ~ ~ 0 1 0 0 30 force
effect give @s slowness 15 1 true