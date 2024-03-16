title @s actionbar {"text": "It's too cold!","color": "#70e5ff"}
scoreboard players add #ColdDamage totk.temperature 1
execute if score #ColdDamage totk.temperature matches ..119 run return 0
damage @s 1 freeze
scoreboard players reset #ColdDamage