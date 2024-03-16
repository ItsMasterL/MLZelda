execute as @a[scores={totk.hasarm=0}] run tag @s remove totk.ascend
execute as @a[scores={totk.hasarm=0}] run return 0
execute as @a[predicate=totk:sneak] run scoreboard players add @s totk.sneak 1
execute as @a[predicate=totk:sneak] run scoreboard players reset NotSneak totk.sneak
execute as @a[predicate=!totk:sneak] run scoreboard players add NotSneak totk.sneak 1
execute as @a[tag=totk.ascend] at @s run function ascend:beginascend
scoreboard players reset @a totk.jump
execute as @a[tag=totk.ascend] run return 0
execute as @a[predicate=!totk:sneak,nbt={OnGround:1b},tag=!totk.ascend] if score @s totk.sneak matches ..5 if score LastSneak totk.sneak matches ..5 run tag @s add totk.ascend
execute as @a[tag=totk.ascend] at @s run tp @s ~ ~ ~ ~ -90
execute as @a[predicate=!totk:sneak,nbt={OnGround:1b}] if score @s totk.sneak matches ..5 if score LastSneak totk.sneak matches ..5 run scoreboard players reset * totk.sneak
execute as @a[predicate=!totk:sneak,nbt={OnGround:1b}] if score @s totk.sneak matches ..5 run scoreboard players operation LastSneak totk.sneak = @s totk.sneak
execute as @a[predicate=!totk:sneak] run scoreboard players reset @s totk.sneak
execute as @a if score @s totk.sneak matches 6.. run scoreboard players reset LastSneak totk.sneak
execute as @a if score NotSneak totk.sneak matches 6.. run scoreboard players reset LastSneak totk.sneak