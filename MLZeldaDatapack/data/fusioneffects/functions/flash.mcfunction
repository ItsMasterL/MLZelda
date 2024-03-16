execute run summon block_display ~-0.5 ~ ~-0.5 {block_state:{Name:"minecraft:air"},Tags:["totk.flower","totk.flash"]}
particle minecraft:electric_spark ~ ~ ~ 0 0 0 5 50 force
particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force
execute if block ~ ~ ~ #minecraft:air run setblock ~ ~ ~ light[level=15]
effect give @e[distance=..3.5] slowness 5 127 true
effect give @e[distance=..3.5] blindness 5 0 true
execute as @e[type=skeleton,distance=..3.5] run damage @s 2000 lightning_bolt
function fusioneffects:end