function temp:getbiome
execute as @a unless score @s totk.temperature matches -2147483648..2147483647 run scoreboard players operation @s totk.temperature = #CurrentTemp totk.temperature
execute as @a unless score @s totk.death matches 5.. run scoreboard players operation @s totk.temperature = #CurrentTemp totk.temperature

execute store result score #Time totk.temperature run time query daytime

execute as @a[gamemode=!creative,gamemode=!spectator] at @s if score @s totk.temperature > #Sweat totk.temperature if score @s totk.temperature < #OnFire totk.temperature run particle rain ~ ~1.5 ~ 0.1 0 0.1 0 1
execute as @a at @s if score @s totk.temperature >= #OnFire totk.temperature run particle smoke ~ ~1.5 ~ 0.1 0.7 0.1 0 5
execute as @a[gamemode=!spectator] at @s if score #CurrentTemp totk.temperature < #ColdBreath totk.temperature if score #Particles totk.temperature matches 100.. run particle minecraft:campfire_cosy_smoke ~ ~1.5 ~ 0 0 0 0.01 1
execute if score #Particles totk.temperature matches 100.. run scoreboard players reset #Particles totk.temperature

execute at @a if block ~ ~ ~ #water run scoreboard players operation #CurrentTemp totk.temperature -= #WaterModifier totk.temperature
execute at @a if block ~ ~ ~ #minecraft:fire run scoreboard players operation #CurrentTemp totk.temperature += #FireModifier totk.temperature
execute at @a if block ~ ~ ~ lava run scoreboard players operation #CurrentTemp totk.temperature += #LavaModifier totk.temperature

execute unless score @r totk.temperature = #CurrentTemp totk.temperature run scoreboard players add #PlayerTimer totk.temperature 1
execute unless score @r totk.temperature = #CurrentTemp totk.temperature at @a if block ~ ~ ~ #water run scoreboard players add #PlayerTimer totk.temperature 19
execute unless score @r totk.temperature = #CurrentTemp totk.temperature at @a if block ~ ~ ~ #minecraft:fire run scoreboard players add #PlayerTimer totk.temperature 119
execute unless score @r totk.temperature = #CurrentTemp totk.temperature at @a if block ~ ~ ~ lava run scoreboard players add #PlayerTimer totk.temperature 139
execute unless score @r totk.temperature = #CurrentTemp totk.temperature at @a if biome ~ ~ ~ #minecraft:is_nether run scoreboard players add #PlayerTimer totk.temperature 9
scoreboard players add #Particles totk.temperature 1
#Snowquill Set
scoreboard players reset #ColdProtect totk.temperature
execute as @a if entity @s[nbt={Inventory:[{components: {"minecraft:lore": ['{"extra":[{"color":"aqua","italic":false,"text":"Keeps you warm in cold temperatures"}],"text":""}'], "minecraft:custom_name": '{"color":"#09E099","italic":false,"text":"Snowquill Boots"}', "minecraft:trim": {material: "minecraft:copper", show_in_tooltip: 0b, pattern: "minecraft:dune"}}, count: 1, Slot: 100b, id: "minecraft:leather_boots"}]}] run scoreboard players add #ColdProtect totk.temperature 1
execute as @a if entity @s[nbt={Inventory:[{components: {"minecraft:lore": ['{"extra":[{"color":"aqua","italic":false,"text":"Keeps you warm in cold temperatures"}],"text":""}'], "minecraft:custom_name": '{"color":"#09E099","italic":false,"text":"Snowquill Leggings"}', "minecraft:trim": {material: "minecraft:emerald", show_in_tooltip: 0b, pattern: "minecraft:wayfinder"}}, count: 1, Slot: 101b, id: "minecraft:leather_leggings"}]}] run scoreboard players add #ColdProtect totk.temperature 1
execute as @a if entity @s[nbt={Inventory:[{components: {"minecraft:lore": ['{"extra":[{"color":"aqua","italic":false,"text":"Keeps you warm in cold temperatures"}],"text":""}'], "minecraft:custom_name": '{"color":"#09E099","italic":false,"text":"Snowquill Chestplate"}', "minecraft:trim": {material: "minecraft:copper", show_in_tooltip: 0b, pattern: "minecraft:silence"}}, count: 1, Slot: 102b, id: "minecraft:leather_chestplate"}]}] run scoreboard players add #ColdProtect totk.temperature 1
execute as @a unless score #ColdProtect totk.temperature matches 1.. if entity @s[nbt={Inventory:[{count: 1, Slot: 100b, id: "minecraft:leather_boots"}, {count: 1, Slot: 101b, id: "minecraft:leather_leggings"}, {count: 1, Slot: 102b, id: "minecraft:leather_chestplate"}, {count: 1, Slot: 103b, id: "minecraft:leather_helmet"}]}] run scoreboard players set #ColdProtect totk.temperature 1

#Desert Set
scoreboard players reset #HeatProtect totk.temperature
execute as @a if entity @s[nbt={Inventory:[{components: {"minecraft:lore": ['{"color":"gold","italic":false,"text":"Keeps you cool in warm temperatures"}'], "minecraft:custom_name": '{"color":"#09E099","italic":false,"text":"Desert Shoes"}', "minecraft:trim": {material: "minecraft:emerald", show_in_tooltip: 0b, pattern: "minecraft:host"}}, count: 1, Slot: 100b, id: "minecraft:leather_boots"}]}] run scoreboard players add #HeatProtect totk.temperature 1
execute as @a if entity @s[nbt={Inventory:[{components: {"minecraft:lore": ['{"color":"gold","italic":false,"text":"Keeps you cool in warm temperatures"}'], "minecraft:custom_name": '{"color":"#09E099","italic":false,"text":"Desert Leggings"}', "minecraft:trim": {material: "minecraft:redstone", show_in_tooltip: 0b, pattern: "minecraft:silence"}}, count: 1, Slot: 101b, id: "minecraft:leather_leggings"}]}] run scoreboard players add #HeatProtect totk.temperature 1
execute as @a if entity @s[nbt={Inventory:[{components: {"minecraft:lore": ['{"color":"gold","italic":false,"text":"Keeps you cool in warm temperatures"}'], "minecraft:custom_name": '{"color":"#09E099","italic":false,"text":"Desert Headband"}', "minecraft:trim": {material: "minecraft:emerald", show_in_tooltip: 0b, pattern: "minecraft:ward"}}, count: 1, Slot: 103b, id: "minecraft:chainmail_helmet"}]}] run scoreboard players add #HeatProtect totk.temperature 1
execute as @a if entity @s[nbt={active_effects:[{id:"minecraft:fire_resistance"}]}] run scoreboard players set #HeatProtect totk.temperature 6

#Flamebreaker Set
scoreboard players reset #FireProtect totk.temperature
execute as @a if entity @s[nbt={Inventory:[{components: {"minecraft:lore": ['{"extra":[{"color":"gold","italic":false,"text":"Keeps you from burning"}],"text":""}'], "minecraft:custom_name": '{"color":"#09E099","italic":false,"text":"Flamebreaker Boots"}', "minecraft:trim": {material: "minecraft:netherite", show_in_tooltip: 0b, pattern: "minecraft:snout"}}, count: 1, Slot: 100b, id: "minecraft:iron_boots"}]}] run scoreboard players add #FireProtect totk.temperature 1
execute as @a if entity @s[nbt={Inventory:[{components: {"minecraft:lore": ['{"extra":[{"color":"gold","italic":false,"text":"Keeps you from burning"}],"text":""}'], "minecraft:custom_name": '{"color":"#09E099","italic":false,"text":"Flamebreaker Leggings"}', "minecraft:trim": {material: "minecraft:netherite", show_in_tooltip: 0b, pattern: "minecraft:silence"}}, count: 1, Slot: 101b, id: "minecraft:iron_leggings"}]}] run scoreboard players add #FireProtect totk.temperature 1
execute as @a if entity @s[nbt={Inventory:[{components: {"minecraft:lore": ['{"extra":[{"color":"gold","italic":false,"text":"Keeps you from burning"}],"text":""}'], "minecraft:custom_name": '{"color":"#09E099","italic":false,"text":"Flamebreaker Chestplate"}', "minecraft:trim": {material: "minecraft:netherite", show_in_tooltip: 0b, pattern: "minecraft:silence"}}, count: 1, Slot: 102b, id: "minecraft:iron_chestplate"}]}] run scoreboard players add #FireProtect totk.temperature 1
execute as @a if entity @s[nbt={Inventory:[{components: {"minecraft:lore": ['{"extra":[{"color":"gold","italic":false,"text":"Keeps you from burning"}],"text":""}'], "minecraft:custom_name": '{"color":"#09E099","italic":false,"text":"Flamebreaker Helmet"}', "minecraft:trim": {material: "minecraft:netherite", show_in_tooltip: 0b, pattern: "minecraft:silence"}}, count: 1, Slot: 103b, id: "minecraft:iron_helmet"}]}] run scoreboard players add #FireProtect totk.temperature 1
execute if score #FireProtect totk.temperature matches 4 run scoreboard players set #HeatProtect totk.temperature 6

#Regular Temp: Increase
execute as @a if score @s totk.temperature < #CurrentTemp totk.temperature unless score #CurrentTemp totk.temperature >= #Sweat totk.temperature unless score #CurrentTemp totk.temperature <= #ColdBreath totk.temperature if score #PlayerTimer totk.temperature >= #TempClimb totk.temperature run tag @s add totk.tempreset
execute as @a if score @s totk.temperature < #CurrentTemp totk.temperature unless score #CurrentTemp totk.temperature >= #Sweat totk.temperature unless score #CurrentTemp totk.temperature <= #ColdBreath totk.temperature if score #PlayerTimer totk.temperature >= #TempClimb totk.temperature run scoreboard players add @s totk.temperature 1
#Regular Temp: Decrease
execute as @a if score @s totk.temperature > #CurrentTemp totk.temperature unless score #CurrentTemp totk.temperature >= #Sweat totk.temperature unless score #CurrentTemp totk.temperature <= #ColdBreath totk.temperature if score #PlayerTimer totk.temperature >= #TempFall totk.temperature run tag @s add totk.tempreset
execute as @a if score @s totk.temperature > #CurrentTemp totk.temperature unless score #CurrentTemp totk.temperature >= #Sweat totk.temperature unless score #CurrentTemp totk.temperature <= #ColdBreath totk.temperature if score #PlayerTimer totk.temperature >= #TempFall totk.temperature run scoreboard players remove @s totk.temperature 1

#Cold: Increase
execute as @a if score @s totk.temperature < #CurrentTemp totk.temperature unless score #CurrentTemp totk.temperature > #ColdBreath totk.temperature if score #PlayerTimer totk.temperature >= #TempClimbCold totk.temperature run tag @s add totk.tempreset
execute as @a if score @s totk.temperature < #CurrentTemp totk.temperature unless score #CurrentTemp totk.temperature > #ColdBreath totk.temperature if score #PlayerTimer totk.temperature >= #TempClimbCold totk.temperature run scoreboard players add @s totk.temperature 1
#Cold: Decrease
execute as @a if score @s totk.temperature > #CurrentTemp totk.temperature unless score #CurrentTemp totk.temperature > #ColdBreath totk.temperature if score #PlayerTimer totk.temperature >= #TempFallCold totk.temperature run tag @s add totk.tempreset
execute as @a if score @s totk.temperature > #CurrentTemp totk.temperature unless score #CurrentTemp totk.temperature > #ColdBreath totk.temperature if score #PlayerTimer totk.temperature >= #TempFallCold totk.temperature run scoreboard players remove @s totk.temperature 1

#Hot: Increase
execute as @a if score @s totk.temperature < #CurrentTemp totk.temperature unless score #CurrentTemp totk.temperature < #Sweat totk.temperature if score #PlayerTimer totk.temperature >= #TempClimbHot totk.temperature run tag @s add totk.tempreset
execute as @a if score @s totk.temperature < #CurrentTemp totk.temperature unless score #CurrentTemp totk.temperature < #Sweat totk.temperature if score #PlayerTimer totk.temperature >= #TempClimbHot totk.temperature run scoreboard players add @s totk.temperature 1
#Hot: Decrease
execute as @a if score @s totk.temperature > #CurrentTemp totk.temperature unless score #CurrentTemp totk.temperature < #Sweat totk.temperature if score #PlayerTimer totk.temperature >= #TempFallHot totk.temperature run tag @s add totk.tempreset
execute as @a if score @s totk.temperature > #CurrentTemp totk.temperature unless score #CurrentTemp totk.temperature < #Sweat totk.temperature if score #PlayerTimer totk.temperature >= #TempFallHot totk.temperature run scoreboard players remove @s totk.temperature 1

execute as @a[tag=totk.tempreset] run scoreboard players set #PlayerTimer totk.temperature 0
tag @a[tag=totk.tempreset] remove totk.tempreset

#Damage
execute as @a[gamemode=!creative,gamemode=!spectator] at @s if score @s totk.temperature < #Cold totk.temperature unless score #ColdProtect totk.temperature matches 1.. run function temp:toocold
execute as @a[gamemode=!creative,gamemode=!spectator] at @s if score @s totk.temperature < #Freezing totk.temperature unless score #ColdProtect totk.temperature matches 2.. run function temp:toocold

execute as @a[gamemode=!creative,gamemode=!spectator] at @s if score @s totk.temperature > #Overheated totk.temperature unless score #HeatProtect totk.temperature matches 1.. run function temp:toowarm
execute as @a[gamemode=!creative,gamemode=!spectator] at @s if score @s totk.temperature > #Heatstroke totk.temperature unless score #HeatProtect totk.temperature matches 2.. run function temp:toowarm
execute as @a[gamemode=!creative,gamemode=!spectator] at @s if score @s totk.temperature > #OnFire totk.temperature unless score #HeatProtect totk.temperature matches 4.. run function temp:toohot