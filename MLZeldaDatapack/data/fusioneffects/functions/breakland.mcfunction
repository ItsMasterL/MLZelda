execute if block ^ ^ ^0.1 #minecraft:fragile run setblock ^ ^ ^0.1 air destroy
execute if block ^ ^ ^-0.1 #minecraft:fragile run setblock ^ ^ ^-0.1 air destroy
execute if block ^0.1 ^ ^ #minecraft:fragile run setblock ^0.1 ^ ^ air destroy
execute if block ^-0.1 ^ ^ #minecraft:fragile run setblock ^-0.1 ^ ^ air destroy
execute if block ~ ~-0.1 ~ #minecraft:fragile run setblock ~ ~-0.1 ~ air destroy
function fusioneffects:end