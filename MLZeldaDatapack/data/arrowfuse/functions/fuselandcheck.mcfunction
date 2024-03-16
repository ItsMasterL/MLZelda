execute if score fuse totk.fusecheck matches 1 if data storage totk:fuse {Item: {count: 1, id: "minecraft:torchflower"}} run function fusioneffects:torchflower
execute if score fuse totk.fusecheck matches 1 if data storage totk:fuse {Item: {count: 1, id: "minecraft:echo_shard"}} run function fusioneffects:echoshard
#breakables
execute if score fuse totk.fusecheck matches 1 if data storage totk:fuse {Item: {count: 1, id: "minecraft:brick"}} run function fusioneffects:breakland
execute if score fuse totk.fusecheck matches 1 if data storage totk:fuse {Item: {count: 1, id: "minecraft:nether_brick"}} run function fusioneffects:breakland
#buckets
execute if score fuse totk.fusecheck matches 1 if data storage totk:fuse {Item: {count: 1, id: "minecraft:bucket"}} if block ~ ~ ~ #water run function fusioneffects:bucketinwater
execute if score fuse totk.fusecheck matches 1 if data storage totk:fuse {Item: {count: 1, id: "minecraft:bucket"}} if block ~ ~ ~ lava run function fusioneffects:bucketinlava
execute if score fuse totk.fusecheck matches 1 if data storage totk:fuse {Item: {count: 1, id: "minecraft:bucket"}} if block ~ ~ ~ powder_snow run function fusioneffects:bucketinsnow
execute if score fuse totk.fusecheck matches 1 if data storage totk:fuse {Item: {count: 1, id: "minecraft:water_bucket"}} if block ~ ~ ~ #air run function fusioneffects:waterbucket
execute if score fuse totk.fusecheck matches 1 if data storage totk:fuse {Item: {count: 1, id: "minecraft:lava_bucket"}} if block ~ ~ ~ #air run function fusioneffects:lavabucket
execute if score fuse totk.fusecheck matches 1 if data storage totk:fuse {Item: {count: 1, id: "minecraft:powder_snow_bucket"}} if block ~ ~ ~ #air run function fusioneffects:snowbucket
#other placeables
execute if score fuse totk.fusecheck matches 1 if data storage totk:fuse {Item: {count: 1, id: "minecraft:flint_and_steel"}} if block ~ ~ ~ #air run function fusioneffects:placefire
execute if score fuse totk.fusecheck matches 1 if data storage totk:fuse {Item: {count: 1, id: "minecraft:fire_charge"}} if block ~ ~ ~ #air run function fusioneffects:placefire
#firework
execute if score fuse totk.fusecheck matches 1 if data storage totk:fuse {Item: {count: 1, id: "minecraft:firework_rocket"}} run function fusioneffects:firework
execute if score fuse totk.fusecheck matches 1 if data storage totk:fuse {Item: {count: 1, id: "minecraft:firework_star"}} run function fusioneffects:fireworkstar
#bomb
execute if score fuse totk.fusecheck matches 1 if data storage totk:fuse {Item: {count: 1, id: "minecraft:gunpowder"}} run function fusioneffects:gunpowder
execute if score fuse totk.fusecheck matches 1 if data storage totk:fuse {Item: {count: 1, id: "minecraft:tnt"}} run function fusioneffects:tnt
execute if score fuse totk.fusecheck matches 1 if data storage totk:fuse {Item: {count: 1, id: "minecraft:tnt_minecart"}} run function fusioneffects:tnt
#flash
execute if score fuse totk.fusecheck matches 1 if data storage totk:fuse {Item: {count: 1, id: "minecraft:glowstone_dust"}} run function fusioneffects:flash
execute if score fuse totk.fusecheck matches 1 if data storage totk:fuse {Item: {count: 1, id: "minecraft:prismarine_crystals"}} run function fusioneffects:flash
execute if score fuse totk.fusecheck matches 1 if data storage totk:fuse {Item: {count: 1, id: "minecraft:nether_star"}} run function fusioneffects:flash
#throwables
execute if score fuse totk.fusecheck matches 1 if data storage totk:fuse {Item: {count: 1, id: "minecraft:egg"}} run function fusioneffects:egg
execute if score fuse totk.fusecheck matches 1 if data storage totk:fuse {Item: {count: 1, id: "minecraft:ender_pearl"}} run function fusioneffects:pearl


execute if score fuse totk.fusecheck matches 1 if data storage totk:fuse Item run summon item ~ ~ ~ {Item:{id:"minecraft:structure_void",Count:1b},PickupDelay:10s,Tags:["totk.unfuse"]}
execute if score fuse totk.fusecheck matches 1 if entity @e[type=minecraft:item,limit=1,distance=..1,tag=totk.unfuse] run kill @s