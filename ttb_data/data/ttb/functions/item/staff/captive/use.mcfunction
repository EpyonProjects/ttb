#called by item/staff/check_staff

#audiovisuals
playsound entity.zombie.attack_iron_door voice @a[distance=..16] ~ ~ ~ 2 0.5 1
particle block ice ~ ~ ~ .25 1 .25 .01 50 normal @a

#functionality
execute anchored eyes run summon area_effect_cloud ^ ^ ^ {Duration:1,Tags:["ttb_entity","ttb_captive_staff_raycast"],CustomName:'"ttb_captive_staff_raycast"'}
data modify entity @e[type=area_effect_cloud,tag=ttb_captive_staff_raycast,sort=nearest,limit=1] Rotation set from entity @s Rotation
execute as @e[type=area_effect_cloud,tag=ttb_captive_staff_raycast,sort=nearest,limit=1] at @s run function ttb:item/staff/captive/raycast

#depletion
function ttb:item/staff/durability/update