execute if score @s totk.maxhealth matches 19..20 run attribute @s generic.max_health base set 18
execute if score @s totk.maxhealth matches 17..18 run attribute @s generic.max_health base set 16
execute if score @s totk.maxhealth matches 15..16 run attribute @s generic.max_health base set 14
execute if score @s totk.maxhealth matches 13..14 run attribute @s generic.max_health base set 12
execute if score @s totk.maxhealth matches 11..12 run attribute @s generic.max_health base set 10
execute if score @s totk.maxhealth matches 9..10 run attribute @s generic.max_health base set 8
execute if score @s totk.maxhealth matches 7..8 run attribute @s generic.max_health base set 6
execute if score @s totk.maxhealth matches 5..6 run attribute @s generic.max_health base set 4
execute if score @s totk.maxhealth matches 3..4 run attribute @s generic.max_health base set 2
execute if score @s totk.maxhealth matches ..2 run gamerule showDeathMessages false
execute if score @s totk.maxhealth matches ..2 run damage @s 2 wither
execute if score @s totk.maxhealth matches ..2 run tellraw @a [{"selector":"@s"},{"text": " could not escape the gloom"}]
execute if score @s totk.maxhealth matches ..2 run gamerule showDeathMessages true
effect clear @s absorption
damage @s 0.0001 wither
scoreboard players set @s totk.gloom 20