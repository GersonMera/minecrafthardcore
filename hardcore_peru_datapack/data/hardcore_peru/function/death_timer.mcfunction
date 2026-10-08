# ==========================================================
# HARDCORE PERU - DEATH TIMER (contador de 4 segundos)
# ==========================================================

scoreboard players add #timer hc_timer 1

# Particulas de humo y ceniza durante la cinematica
execute as @a at @s run particle minecraft:crimson_spore ~ ~1 ~ 0.8 1 0.8 0.1 15
execute as @a at @s run particle minecraft:smoke ~ ~0.5 ~ 0.5 0.5 0.5 0.02 5

# A los 2 segundos (tick 40): campana funebre
execute if score #timer hc_timer matches 40 run playsound minecraft:block.bell.use master @a ~ ~ ~ 3 0.6

# A los 4 segundos (tick 80): ejecutar el reinicio
execute if score #timer hc_timer matches 80.. run function hardcore_peru:reset_world
