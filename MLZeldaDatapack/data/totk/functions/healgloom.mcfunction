execute if score @s totk.maxhealth matches 18..19 run attribute @s generic.max_health base set 20
execute if score @s totk.maxhealth matches 16..17 run attribute @s generic.max_health base set 18
execute if score @s totk.maxhealth matches 14..15 run attribute @s generic.max_health base set 16
execute if score @s totk.maxhealth matches 12..13 run attribute @s generic.max_health base set 14
execute if score @s totk.maxhealth matches 10..11 run attribute @s generic.max_health base set 12
execute if score @s totk.maxhealth matches 8..9 run attribute @s generic.max_health base set 10
execute if score @s totk.maxhealth matches 6..7 run attribute @s generic.max_health base set 8
execute if score @s totk.maxhealth matches 4..5 run attribute @s generic.max_health base set 6
execute if score @s totk.maxhealth matches 2..3 run attribute @s generic.max_health base set 4
execute if score @s totk.maxhealth matches ..1 run attribute @s generic.max_health base set 2
scoreboard players set @s totk.healgloom 0
playsound minecraft:entity.item.pickup ambient @s ~ ~ ~ 1 0.6