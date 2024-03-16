execute if entity @s[predicate=totk:sneak] run tag @s remove totk.ascend
title @s[tag=!totk.ascend] actionbar ""
execute as @s[tag=!totk.ascend] run scoreboard players reset * totk.ascend
execute as @s[tag=!totk.ascend] run return 0

execute store result score BlockDistance totk.ascend run function ascend:raycast
execute if score BlockDistance totk.ascend matches 1..10 if score @s totk.jump matches 1.. at @s run function ascend:ascend

title @s actionbar {"text": "--||ASCEND||--","color": "dark_aqua"}
execute if score BlockDistance totk.ascend matches 1..10 run title @s actionbar {"text": "--||ASCEND||--","color": "aqua"}