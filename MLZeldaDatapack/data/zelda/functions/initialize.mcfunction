scoreboard objectives add zelda.firstrun dummy
## Tears of the Kingdom/Breath of the Wild features
scoreboard objectives add totk.enabled dummy

scoreboard objectives add totk.lookup dummy
scoreboard objectives add totk.flowertime dummy
scoreboard objectives add totk.bowused minecraft.used:minecraft.bow
scoreboard objectives add totk.dropitem minecraft.custom:minecraft.drop
scoreboard objectives add totk.hasarm dummy
scoreboard objectives add totk.fusecheck dummy
scoreboard objectives add totk.height dummy
scoreboard objectives add totk.maxhealth dummy
scoreboard objectives add totk.gloom dummy
scoreboard objectives add totk.healgloom dummy
scoreboard objectives add totk.eatglowberry minecraft.used:minecraft.glow_berries
scoreboard objectives add totk.temperature dummy
scoreboard objectives add totk.temperatureunits dummy
scoreboard objectives add totk.death minecraft.custom:time_since_death
scoreboard objectives add totk.sneak dummy
scoreboard objectives add totk.jump minecraft.custom:jump
scoreboard objectives add totk.ascend dummy
scoreboard objectives add totk.toweruse minecraft.custom:interact_with_lectern

scoreboard objectives add zelda.help trigger
scoreboard players enable @a zelda.help
scoreboard objectives add zelda.totk trigger
scoreboard players enable @a zelda.totk

scoreboard objectives add totk.setunits trigger

execute as @a unless score @s zelda.firstrun matches 0 run function zelda:default


tellraw @a [{"text":"[MLZELDA] "},{"text":"Master L's Zelda Datapack","color":"green","bold":true},{"text":" v1.0","color":"gold","bold":false}]
tellraw @a [{"text":"[MLZELDA] "},{"text":"Run '/trigger zelda.help' for commands!","color":"green"}]