function temp:setfahrenheit
execute if score @r totk.temperatureunits matches 1.. run function temp:setcelsius
scoreboard objectives setdisplay sidebar totk.temperature
scoreboard players enable @a totk.setunits
scoreboard players set @a totk.enabled 1
scoreboard players reset @a zelda.totk

tellraw @a [{"text": "[MLZELDA] "},{"text": "Tears of the Kingdom features enabled!","color": "green"}]