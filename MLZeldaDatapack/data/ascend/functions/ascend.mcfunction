execute if score BlockDistance totk.ascend matches 1 run summon area_effect_cloud ~ ~2 ~ {Tags:["totk.ascendray"]}
execute if score BlockDistance totk.ascend matches 2 run summon area_effect_cloud ~ ~3 ~ {Tags:["totk.ascendray"]}
execute if score BlockDistance totk.ascend matches 3 run summon area_effect_cloud ~ ~4 ~ {Tags:["totk.ascendray"]}
execute if score BlockDistance totk.ascend matches 4 run summon area_effect_cloud ~ ~5 ~ {Tags:["totk.ascendray"]}
execute if score BlockDistance totk.ascend matches 5 run summon area_effect_cloud ~ ~6 ~ {Tags:["totk.ascendray"]}
execute if score BlockDistance totk.ascend matches 6 run summon area_effect_cloud ~ ~7 ~ {Tags:["totk.ascendray"]}
execute if score BlockDistance totk.ascend matches 7 run summon area_effect_cloud ~ ~8 ~ {Tags:["totk.ascendray"]}
execute if score BlockDistance totk.ascend matches 8 run summon area_effect_cloud ~ ~9 ~ {Tags:["totk.ascendray"]}
execute if score BlockDistance totk.ascend matches 9 run summon area_effect_cloud ~ ~10 ~ {Tags:["totk.ascendray"]}
execute if score BlockDistance totk.ascend matches 10 run summon area_effect_cloud ~ ~11 ~ {Tags:["totk.ascendray"]}
execute as @e[type=area_effect_cloud,tag=totk.ascendray] at @s run function ascend:findsurface
title @s actionbar ""
tag @s remove totk.ascend