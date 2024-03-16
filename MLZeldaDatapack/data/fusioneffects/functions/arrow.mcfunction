execute as @p at @s anchored eyes run summon arrow ^ ^ ^1 {Tags:["totk.doublearrow"]}
execute as @e[type=arrow,tag=totk.doublearrow] run data modify entity @s Motion set from entity @e[type=arrow,limit=1,sort=nearest,tag=totk.fusedarrow] Motion
scoreboard players reset fuse totk.fusecheck
data remove storage totk:fuse Item
tag @s remove totk.fusedarrow