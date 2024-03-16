execute as @e at @s if biome ~ ~ ~ totk:floatyisland run attribute @s generic.gravity modifier add 931341fb-b8bd-4cb9-bc5d-d9af3e6beafe totk.floaty -0.8 add_multiplied_total
execute as @e at @s if biome ~ ~ ~ totk:floatyisland run attribute @s generic.fall_damage_multiplier modifier add 4ad36feb-549d-43ca-aef2-2006521cfb74 totk.floatydmg -0.8 add_multiplied_total
execute as @e at @s if biome ~ ~ ~ totk:floatyisland run attribute @s generic.safe_fall_distance modifier add 5a9b0be1-ebd3-4b17-a216-22d3c380875c totk.floatydist 0.8 add_multiplied_total
execute as @e[tag=!totk.floaty] at @s if biome ~ ~ ~ totk:floatyisland run playsound item.bucket.fill_lava ambient @s ~ ~ ~ 1 0
execute as @e[tag=!totk.floaty] at @s if biome ~ ~ ~ totk:floatyisland run tag @s add totk.floaty
execute as @e[tag=totk.floaty] at @s unless biome ~ ~ ~ totk:floatyisland run playsound item.bucket.empty_lava ambient @s ~ ~ ~ 1 0
execute as @e[tag=totk.floaty] at @s unless biome ~ ~ ~ totk:floatyisland run attribute @s generic.gravity modifier remove 931341fb-b8bd-4cb9-bc5d-d9af3e6beafe
execute as @e[tag=totk.floaty] at @s unless biome ~ ~ ~ totk:floatyisland run attribute @s generic.fall_damage_multiplier modifier remove 4ad36feb-549d-43ca-aef2-2006521cfb74
execute as @e[tag=totk.floaty] at @s unless biome ~ ~ ~ totk:floatyisland run attribute @s generic.safe_fall_distance modifier remove 5a9b0be1-ebd3-4b17-a216-22d3c380875c
execute as @e[tag=totk.floaty] at @s unless biome ~ ~ ~ totk:floatyisland run tag @s remove totk.floaty