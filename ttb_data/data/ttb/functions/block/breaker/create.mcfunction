#called by block/create_block

playsound block.stone.place block @a[distance=..16] ~ ~ ~ 1 1 1

#kill creation entity
kill @s[type=!player]

#create
execute if block ~ ~ ~ #ttb:block/replace_on_creation run summon armor_stand ~ ~ ~ {Tags:["ttb_entity","ttb_block","ttb_machine","ttb_breaker","ttb_machine_powerable_tempite","ttb_block_directional","ttb_fire_stand"],NoGravity:1b,Silent:1b,Small:1b,Marker:1b,Invisible:1b,CustomNameVisible:0b,CustomName:'{"translate":"block.ttb.breaker"}',Fire:17s}
loot replace entity @e[type=armor_stand,tag=ttb_breaker,distance=...1,limit=1] armor.head loot ttb:items/breaker

execute if block ~ ~ ~ barrel{CustomName:'{"translate":"block.ttb.breaker"}'} run loot spawn ~ ~ ~ loot ttb:items/breaker
fill ~ ~ ~ ~ ~ ~ barrel[facing=up]{CustomName:'{"translate":"block.ttb.breaker"}'} replace #ttb:block/replace_on_creation
execute unless block ~ ~ ~ barrel{CustomName:'{"translate":"block.ttb.breaker"}'} run loot spawn ~ ~ ~ loot ttb:items/breaker
