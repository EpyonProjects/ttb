#called by util/generate_loot_table_seed

execute store result score #seed_pos_0 ttb_data run data get entity @s Pos[0]
execute store result score #seed_pos_2 ttb_data run data get entity @s Pos[2]
scoreboard players operation #seed_pos_0 ttb_data += seed ttb_data
scoreboard players operation #seed_pos_0 ttb_data *= #seed_pos_2 ttb_data

data modify block ~ ~ ~ LootTable set value "minecraft:empty"
data modify block ~ ~ ~ LootTableSeed set value 1L
execute store result block ~ ~ ~ LootTableSeed long 1 run scoreboard players get #seed_pos_0 ttb_data