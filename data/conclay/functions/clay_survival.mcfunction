# store sneak_time as sneak_time_store
execute as @a store result score @s sneak_time_store run scoreboard players get @s sneak_time
# spring
kill @e[x=0,y=63,z=0,distance=..3,type=!minecraft:player]
effect give @a[x=0,y=64,z=0,distance=..3] regeneration 1 5
# death penalty
execute as @a[scores={deathCount=1}] run spawnpoint @s 0 64 0
execute as @a[scores={deathCount=1}] run clear @s
execute as @a[scores={deathCount=1}] run xp set @s 0 levels
execute as @a[scores={deathCount=1}] run scoreboard players reset @s deathCount
execute as @a if entity @s[nbt={DeathTime:0s}] run function conclay:adjust_attribution
# dragon_slayer_buff
execute if block -2 66 -2 dragon_egg run function conclay:dragon_slayer_buff
# 30s clock
scoreboard players add @a timer 1
scoreboard players set @a[scores={timer=600..}] timer 0
# skills
execute as @a[scores={sneak=1..}] run function conclay:reset_sneak
execute as @a[scores={jump=1..}] run function conclay:reset_sneak
execute as @a[scores={hurt=1..}] run function conclay:reset_sneak
execute as @a if score @s sneak_time_store = @s sneak_time_store1 run scoreboard players reset @s sneak_time
execute as @a unless data entity @s {Inventory: [{Slot: -106b}]} run scoreboard players reset @s sneak_time
execute as @a[nbt={Inventory: [{Slot: -106b, id: "minecraft:feather"}]},scores={sneak_time=160}] run function conclay:back
# store sneak_time as sneak_time_store1
execute as @a store result score @s sneak_time_store1 run scoreboard players get @s sneak_time
