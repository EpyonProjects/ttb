#called by entity/player/tick

execute if entity @s[tag=ttb_create_amethyst_ore] run function ttb:block/amethyst_ore/create
execute if entity @s[tag=ttb_create_vulcaanium_ore] run function ttb:block/vulcaanium_ore/create
execute if entity @s[tag=ttb_create_breaker] run function ttb:block/breaker/create
execute if entity @s[tag=ttb_create_tempest_crafter] run function ttb:block/tempest_crafter/create
execute if entity @s[tag=ttb_create_tempite_stone] run function ttb:block/tempite_stone/create

execute as @e[type=armor_stand,tag=ttb_block_directional,distance=...1,limit=1] at @s run function ttb:block/set_rotation
