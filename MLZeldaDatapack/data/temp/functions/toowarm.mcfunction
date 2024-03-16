title @s actionbar {"text": "It's too hot!","color": "#ffd257"}
scoreboard players add #WarmDamage totk.temperature 1
execute if score #WarmDamage totk.temperature matches ..119 run return 0
damage @s 1 dry_out
scoreboard players reset #WarmDamage