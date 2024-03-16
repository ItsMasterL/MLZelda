execute if score @s totk.temperatureunits matches 1.. run tellraw @a [{"text": "[TOTK] "},{"text": "You've set your units to Fahrenheit!","color": "green"}]
execute unless score @s totk.temperatureunits matches 1.. run tellraw @a [{"text": "[TOTK] "},{"text": "You've set your units to Celsius!","color": "green"}]

execute unless score @s totk.temperatureunits matches 1.. run tag @s add totk.tocelsius
execute if score @s totk.temperatureunits matches 1.. run tag @s add totk.tofahrenheit

execute if entity @s[tag=totk.tofahrenheit] run scoreboard players reset @s totk.temperatureunits
execute if entity @s[tag=totk.tocelsius] run scoreboard players set @s totk.temperatureunits 1

execute if entity @s[tag=totk.tofahrenheit] run function temp:setfahrenheit
execute if entity @s[tag=totk.tocelsius] run function temp:setcelsius

tag @s remove totk.tofahrenheit
tag @s remove totk.tocelsius
scoreboard players set @s totk.setunits 0
scoreboard players enable @s totk.setunits