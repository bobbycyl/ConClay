scoreboard objectives add deathCount deathCount
scoreboard objectives add timer dummy
scoreboard objectives add sneak_time minecraft.custom:minecraft.sneak_time
scoreboard objectives add sneak_time_store dummy
scoreboard objectives add sneak_time_store1 dummy
scoreboard objectives add sneak minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add jump minecraft.custom:minecraft.jump
scoreboard objectives add hurt minecraft.custom:minecraft.damage_taken
gamerule doLimitedCrafting true
gamerule forgiveDeadPlayers false
gamerule universalAnger true
gamerule keepInventory true
gamerule mobExplosionDropDecay false
gamerule playersSleepingPercentage 50
execute as @a run function conclay:adjust_attribution
