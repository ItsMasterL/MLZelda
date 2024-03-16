execute as @a[scores={totk.bowused=1..,totk.hasarm=1..}] at @s if data storage totk:fuse Item run tag @e[type=#minecraft:arrows,limit=1,sort=nearest] add totk.fusedarrow
execute as @a[scores={totk.bowused=1..,totk.hasarm=1..}] at @s run data merge entity @e[type=arrow,sort=nearest,limit=1,tag=totk.fusedarrow] {SoundEvent:"minecraft:entity.player.attack.strong",item: {components: {"minecraft:potion_contents": {potion: "minecraft:luck"}, "minecraft:intangible_projectile": {}}}}
execute as @a[scores={totk.bowused=1..}] at @s run scoreboard players reset @s totk.bowused
#Bricks
execute as @e[tag=totk.fusedarrow] at @s if data storage totk:fuse {Item: {count: 1, id: "minecraft:brick"}} run function fusioneffects:breakactive
execute as @e[tag=totk.fusedarrow] at @s if data storage totk:fuse {Item: {count: 1, id: "minecraft:nether_brick"}} run function fusioneffects:breakactive
#arrow
execute as @e[type=#minecraft:arrows,tag=totk.fusedarrow] at @s if data storage totk:fuse {Item: {count: 1, id: "minecraft:arrow"}} run function fusioneffects:arrow
## damage
#increase
execute as @e[type=#minecraft:arrows,tag=totk.fusedarrow] store result score arrowdamage totk.fusecheck run data get entity @s damage 10
execute as @e[type=#minecraft:arrows,tag=totk.fusedarrow] at @s if data storage totk:fuse {Item: {count: 1, id: "minecraft:diamond"}} run scoreboard players add arrowdamage totk.fusecheck 80
execute as @e[type=#minecraft:arrows,tag=totk.fusedarrow] at @s if data storage totk:fuse {Item: {count: 1, id: "minecraft:disc_fragment_5"}} run scoreboard players add arrowdamage totk.fusecheck 70
execute as @e[type=#minecraft:arrows,tag=totk.fusedarrow] at @s if data storage totk:fuse {Item: {count: 1, id: "minecraft:prismarine_shard"}} run scoreboard players add arrowdamage totk.fusecheck 40
execute as @e[type=#minecraft:arrows,tag=totk.fusedarrow] at @s if data storage totk:fuse {Item: {count: 1, id: "minecraft:amethyst_shard"}} run scoreboard players add arrowdamage totk.fusecheck 30
execute as @e[type=#minecraft:arrows,tag=totk.fusedarrow] at @s if data storage totk:fuse {Item: {count: 1, id: "minecraft:flint"}} run scoreboard players add arrowdamage totk.fusecheck 10
#decrease
execute as @e[type=#minecraft:arrows,tag=totk.fusedarrow] at @s if data storage totk:fuse {Item: {count: 1, id: "minecraft:wheat"}} run scoreboard players remove arrowdamage totk.fusecheck 10
execute as @e[type=#minecraft:arrows,tag=totk.fusedarrow] at @s if data storage totk:fuse {Item: {count: 1, id: "minecraft:clay_ball"}} run scoreboard players remove arrowdamage totk.fusecheck 15
execute as @e[type=#minecraft:arrows,tag=totk.fusedarrow] at @s if data storage totk:fuse {Item: {count: 1, id: "minecraft:snowball"}} run scoreboard players remove arrowdamage totk.fusecheck 20
execute as @e[type=#minecraft:arrows,tag=totk.fusedarrow] store result entity @s damage float 0.1 run scoreboard players get arrowdamage totk.fusecheck
## piercing
#increase
execute as @e[type=#minecraft:arrows,tag=totk.fusedarrow] store result score arrowpierce totk.fusecheck run data get entity @s PierceLevel 1
execute as @e[type=#minecraft:arrows,tag=totk.fusedarrow] at @s if data storage totk:fuse {Item: {count: 1, id: "minecraft:diamond"}} run scoreboard players add arrowpierce totk.fusecheck 2
execute as @e[type=#minecraft:arrows,tag=totk.fusedarrow] at @s if data storage totk:fuse {Item: {count: 1, id: "minecraft:amethyst_shard"}} run scoreboard players add arrowpierce totk.fusecheck 3
execute as @e[type=#minecraft:arrows,tag=totk.fusedarrow] at @s if data storage totk:fuse {Item: {count: 1, id: "minecraft:prismarine_shard"}} run scoreboard players add arrowpierce totk.fusecheck 1
execute as @e[type=#minecraft:arrows,tag=totk.fusedarrow] at @s if data storage totk:fuse {Item: {count: 1, id: "minecraft:flint"}} run scoreboard players add arrowpierce totk.fusecheck 1
execute as @e[type=#minecraft:arrows,tag=totk.fusedarrow] store result entity @s PierceLevel float 1 run scoreboard players get arrowpierce totk.fusecheck
## fire
execute as @e[type=#minecraft:arrows,tag=totk.fusedarrow] at @s if data storage totk:fuse {Item: {count: 1, id: "minecraft:magma_cream"}} run data merge entity @s {Fire:2000s}
execute as @e[type=#minecraft:arrows,tag=totk.fusedarrow] at @s if data storage totk:fuse {Item: {count: 1, id: "minecraft:blaze_powder"}} run data merge entity @s {Fire:2000s}
execute as @e[type=#minecraft:arrows,tag=totk.fusedarrow] at @s if data storage totk:fuse {Item: {count: 1, id: "minecraft:blaze_rod"}} run data merge entity @s {Fire:2000s}
execute as @e[type=#minecraft:arrows,tag=totk.fusedarrow] at @s if data storage totk:fuse {Item: {count: 1, id: "minecraft:fire_charge"}} run data merge entity @s {Fire:2000s}
execute as @e[type=#minecraft:arrows,tag=totk.fusedarrow] at @s if data storage totk:fuse {Item: {count: 1, id: "minecraft:torch"}} run data merge entity @s {Fire:2000s}
execute as @e[type=#minecraft:arrows,tag=totk.fusedarrow] at @s if data storage totk:fuse {Item: {count: 1, id: "minecraft:soul_torch"}} run data merge entity @s {Fire:2000s}