title @s actionbar {"text": "It's scalding!","color": "#ff0000"}
scoreboard players add #HotDamage totk.temperature 1
execute if score #HotDamage totk.temperature matches ..59 run return 0
damage @s 1 on_fire
scoreboard players reset #HotDamage