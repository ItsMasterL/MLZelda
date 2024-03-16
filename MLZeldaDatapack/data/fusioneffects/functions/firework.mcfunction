summon firework_rocket ~ ~ ~
execute as @e[type=firework_rocket,limit=1,sort=nearest] run data modify entity @s FireworksItem.components set from storage totk:fuse Item.components
execute store result score flightduration totk.fusecheck run data get storage totk:fuse Item.components.minecraft:fireworks.flight_duration
execute as @e[type=firework_rocket,limit=1,sort=nearest] if score flightduration totk.fusecheck matches 1 run data modify entity @s LifeTime set value 25
execute as @e[type=firework_rocket,limit=1,sort=nearest] if score flightduration totk.fusecheck matches 2 run data modify entity @s LifeTime set value 35
execute as @e[type=firework_rocket,limit=1,sort=nearest] if score flightduration totk.fusecheck matches 3 run data modify entity @s LifeTime set value 46
scoreboard players reset flightduration totk.fusecheck
function fusioneffects:end