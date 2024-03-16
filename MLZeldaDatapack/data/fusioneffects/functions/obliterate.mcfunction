particle dust_color_transition 1 1 1 1 0 0.25 0.3 ~ ~ ~ 0.5 1 0.5 0 500 force
playsound block.bell.resonate player @a ~ ~ ~ 1 2
tp ~ -70 ~
execute as @e[nbt={active_effects:[{id:"minecraft:luck"}]}] run data remove storage totk:fuse Item
damage @s 100000000 outside_border by @p