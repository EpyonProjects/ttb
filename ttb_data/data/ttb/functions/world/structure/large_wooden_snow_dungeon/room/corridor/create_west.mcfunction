#called by world/structure/large_wooden_snow_dungeon/room/corridor/connect

function ttb:world/structure/large_wooden_snow_dungeon/room/corridor/prepare_structure_block
data modify block ~ ~ ~ rotation set value "CLOCKWISE_180"
setblock ~ ~1 ~ redstone_block