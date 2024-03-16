execute as @a store result score @s totk.maxhealth run attribute @s generic.max_health get
execute as @a[gamemode=!creative,gamemode=!spectator] at @s if block ~ ~ ~ #minecraft:gloom run scoreboard players add @s totk.gloom 1
execute as @a[gamemode=!creative,gamemode=!spectator] at @s if block ~ ~-1 ~ #minecraft:gloom run scoreboard players add @s totk.gloom 1
execute as @a[gamemode=!creative,gamemode=!spectator] at @s if block ~ ~-2 ~ #minecraft:gloom unless block ~ ~-2 ~ sculk_vein run scoreboard players add @s totk.gloom 1
execute as @a at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ #minecraft:gloom unless block ~ ~ ~ #minecraft:gloom run scoreboard players remove @s[scores={totk.gloom=1..}] totk.gloom 1

execute as @a[gamemode=!creative,gamemode=!spectator] at @s if score @s totk.gloom matches 60.. run function totk:gloom

execute as @a[scores={totk.gloom=1..},tag=!totk.gloom] at @s run playsound item.firecharge.use block @s ~ ~ ~ 1 0
execute as @a[scores={totk.gloom=1..},tag=!totk.gloom] at @s run particle dust_color_transition 0.024 0.243 0.278 1 0 0 0 ~ ~1 ~ 0.2 0.5 0.2 1 200
execute as @a[scores={totk.gloom=1..},tag=!totk.gloom] run tag @s add totk.gloom

execute as @a[scores={totk.gloom=0},tag=totk.gloom] at @s run playsound block.lava.pop block @s ~ ~ ~ 1 0
execute as @a[scores={totk.gloom=0},tag=totk.gloom] run tag @s remove totk.gloom

execute as @a[predicate=totk:healgloom,scores={totk.maxhealth=..19}] unless entity @s[scores={totk.gloom=1..}] run scoreboard players add @s totk.healgloom 1

execute as @a[predicate=totk:healgloom,scores={totk.maxhealth=..19,totk.healgloom=20..}] unless entity @s[scores={totk.gloom=1..}] at @s run function totk:healgloom
execute as @a[predicate=!totk:healgloom] run scoreboard players set @s totk.healgloom 0

execute as @a[scores={totk.eatglowberry=1..}] run function totk:healgloom
execute as @a[scores={totk.eatglowberry=1..}] run scoreboard players remove @s totk.eatglowberry 1