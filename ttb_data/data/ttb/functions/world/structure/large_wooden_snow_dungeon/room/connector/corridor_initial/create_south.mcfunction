#called by world/structure/large_wooden_snow_dungeon/room/connector/corridor_initial/connect

data modify storage ttb:world structure.orientation[0].id set value "minecraft:south"
function ttb:world/structure/large_wooden_snow_dungeon/room/connector/corridor_initial/prepare_structure_block
data modify block ~ ~ ~ rotation set value "CLOCKWISE_90"
setblock ~ ~1 ~ redstone_block