execute run summon block_display ~-0.5 ~ ~-0.5 {block_state:{Name:"minecraft:torchflower"},Tags:["totk.flower","totk.torchflower"]}
execute unless block ~ ~0.1 ~ #minecraft:flowersafe run tag @e[type=block_display,limit=1,sort=nearest] add totk.ceilingsupport
execute unless block ~ ~-0.1 ~ #minecraft:flowersafe run tag @e[type=block_display,limit=1,sort=nearest] add totk.floorsupport
execute unless block ~ ~0.1 ~ #minecraft:flowersafe run data merge entity @e[type=block_display,limit=1,sort=nearest] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[1f,0f,0f,0f],translation:[0f,0f,1f],scale:[1f,1f,1f]}}
execute if block ~ ~ ~ #minecraft:air run setblock ~ ~ ~ light[level=15]
execute if block ~ ~ ~ #minecraft:water run setblock ~ ~ ~ light[level=15,waterlogged=true]
function fusioneffects:end