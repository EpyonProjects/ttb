#called by block/tempite_wire/power_adjacent

summon armor_stand ~ ~ ~ {Tags:["ttb_entity","ttb_tempite_wire","ttb_tempite_wire_glass_new"],Small:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:barrier,Count:1b,tag:{CustomModelData:6830014}}],CustomName:'"ttb_tempite_wire"'}

tag @s add ttb_tempite_wire_glass

execute positioned ~ ~1 ~ if block ~ ~ ~ #ttb:block/tempite_wire/can_power unless entity @e[type=armor_stand,tag=ttb_tempite_wire,distance=...5] run function ttb:block/tempite_wire/check_color
execute positioned ~ ~-1 ~ if block ~ ~ ~ #ttb:block/tempite_wire/can_power unless entity @e[type=armor_stand,tag=ttb_tempite_wire,distance=...5] run function ttb:block/tempite_wire/check_color
execute positioned ~1 ~ ~ if block ~ ~ ~ #ttb:block/tempite_wire/can_power unless entity @e[type=armor_stand,tag=ttb_tempite_wire,distance=...5] run function ttb:block/tempite_wire/check_color
execute positioned ~-1 ~ ~ if block ~ ~ ~ #ttb:block/tempite_wire/can_power unless entity @e[type=armor_stand,tag=ttb_tempite_wire,distance=...5] run function ttb:block/tempite_wire/check_color
execute positioned ~ ~ ~1 if block ~ ~ ~ #ttb:block/tempite_wire/can_power unless entity @e[type=armor_stand,tag=ttb_tempite_wire,distance=...5] run function ttb:block/tempite_wire/check_color
execute positioned ~ ~ ~-1 if block ~ ~ ~ #ttb:block/tempite_wire/can_power unless entity @e[type=armor_stand,tag=ttb_tempite_wire,distance=...5] run function ttb:block/tempite_wire/check_color

tag @s remove ttb_tempite_wire_glass
