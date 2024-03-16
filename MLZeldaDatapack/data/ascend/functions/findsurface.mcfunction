execute unless block ~ ~ ~ #flowersafe run summon area_effect_cloud ~ ~1 ~ {Tags:["totk.ascendray"]}
execute unless block ~ ~ ~ #flowersafe run tag @s remove totk.ascendray
execute unless block ~ ~ ~ #flowersafe as @e[type=area_effect_cloud,tag=totk.ascendray] at @s run function ascend:findsurface
execute unless block ~ ~ ~ #flowersafe run kill @s

execute if block ~ ~ ~ #flowersafe unless block ~ ~1 ~ #flowersafe run summon area_effect_cloud ~ ~1 ~ {Tags:["totk.ascendray"]}
execute if block ~ ~ ~ #flowersafe unless block ~ ~1 ~ #flowersafe run tag @s remove totk.ascendray
execute if block ~ ~ ~ #flowersafe unless block ~ ~1 ~ #flowersafe as @e[type=area_effect_cloud,tag=totk.ascendray] at @s run function ascend:findsurface
execute if block ~ ~ ~ #flowersafe unless block ~ ~1 ~ #flowersafe run kill @s

execute if block ~ ~ ~ #flowersafe if block ~ ~1 ~ #flowersafe run tp @a ~ ~ ~
execute if block ~ ~ ~ #flowersafe if block ~ ~1 ~ #flowersafe run playsound block.enchantment_table.use player @a ~ ~ ~ 1 1.5
execute if block ~ ~ ~ #flowersafe if block ~ ~1 ~ #flowersafe run kill @s