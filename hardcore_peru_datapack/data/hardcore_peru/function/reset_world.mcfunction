# ==========================================================
# HARDCORE PERU - RESET WORLD v5
# Compatible con modo Hardcore (no necesita doImmediateRespawn)
# spawnpoint con coordenadas explicitas para robusted
# ==========================================================

# Volver a supervivencia PRIMERO (saca del modo espectador de Hardcore)
gamemode survival @a

# Incrementar contador de reinicios
scoreboard players add #reset hc_reset 1

# Ciclo: si supera 30 vuelve a 1
execute if score #reset hc_reset matches 31.. run scoreboard players set #reset hc_reset 1

# 30 DESTINOS - tp Y spawnpoint con las mismas coordenadas
# (tp funciona si el jugador ya esta en survival, spawnpoint funciona si aun es espectador)
execute if score #reset hc_reset matches 1 run tp @a 3200 250 1800
execute if score #reset hc_reset matches 1 run spawnpoint @a 3200 250 1800
execute if score #reset hc_reset matches 2 run tp @a -3500 250 2800
execute if score #reset hc_reset matches 2 run spawnpoint @a -3500 250 2800
execute if score #reset hc_reset matches 3 run tp @a 2600 250 -4200
execute if score #reset hc_reset matches 3 run spawnpoint @a 2600 250 -4200
execute if score #reset hc_reset matches 4 run tp @a -4800 250 -3100
execute if score #reset hc_reset matches 4 run spawnpoint @a -4800 250 -3100
execute if score #reset hc_reset matches 5 run tp @a 5200 250 3600
execute if score #reset hc_reset matches 5 run spawnpoint @a 5200 250 3600
execute if score #reset hc_reset matches 6 run tp @a -6100 250 4900
execute if score #reset hc_reset matches 6 run spawnpoint @a -6100 250 4900
execute if score #reset hc_reset matches 7 run tp @a 4700 250 -6300
execute if score #reset hc_reset matches 7 run spawnpoint @a 4700 250 -6300
execute if score #reset hc_reset matches 8 run tp @a -5500 250 -5800
execute if score #reset hc_reset matches 8 run spawnpoint @a -5500 250 -5800
execute if score #reset hc_reset matches 9 run tp @a 6800 250 2100
execute if score #reset hc_reset matches 9 run spawnpoint @a 6800 250 2100
execute if score #reset hc_reset matches 10 run tp @a -7200 250 -4300
execute if score #reset hc_reset matches 10 run spawnpoint @a -7200 250 -4300
execute if score #reset hc_reset matches 11 run tp @a 1900 250 5600
execute if score #reset hc_reset matches 11 run spawnpoint @a 1900 250 5600
execute if score #reset hc_reset matches 12 run tp @a -2800 250 -6700
execute if score #reset hc_reset matches 12 run spawnpoint @a -2800 250 -6700
execute if score #reset hc_reset matches 13 run tp @a 7500 250 -2900
execute if score #reset hc_reset matches 13 run spawnpoint @a 7500 250 -2900
execute if score #reset hc_reset matches 14 run tp @a -3900 250 7100
execute if score #reset hc_reset matches 14 run spawnpoint @a -3900 250 7100
execute if score #reset hc_reset matches 15 run tp @a 4100 250 -8200
execute if score #reset hc_reset matches 15 run spawnpoint @a 4100 250 -8200
execute if score #reset hc_reset matches 16 run tp @a -8500 250 3300
execute if score #reset hc_reset matches 16 run spawnpoint @a -8500 250 3300
execute if score #reset hc_reset matches 17 run tp @a 6300 250 -5100
execute if score #reset hc_reset matches 17 run spawnpoint @a 6300 250 -5100
execute if score #reset hc_reset matches 18 run tp @a -5700 250 6400
execute if score #reset hc_reset matches 18 run spawnpoint @a -5700 250 6400
execute if score #reset hc_reset matches 19 run tp @a 8900 250 1200
execute if score #reset hc_reset matches 19 run spawnpoint @a 8900 250 1200
execute if score #reset hc_reset matches 20 run tp @a -1600 250 8300
execute if score #reset hc_reset matches 20 run spawnpoint @a -1600 250 8300
execute if score #reset hc_reset matches 21 run tp @a 3800 250 -7600
execute if score #reset hc_reset matches 21 run spawnpoint @a 3800 250 -7600
execute if score #reset hc_reset matches 22 run tp @a -7400 250 -1800
execute if score #reset hc_reset matches 22 run spawnpoint @a -7400 250 -1800
execute if score #reset hc_reset matches 23 run tp @a 9200 250 -3700
execute if score #reset hc_reset matches 23 run spawnpoint @a 9200 250 -3700
execute if score #reset hc_reset matches 24 run tp @a -4200 250 9400
execute if score #reset hc_reset matches 24 run spawnpoint @a -4200 250 9400
execute if score #reset hc_reset matches 25 run tp @a 2300 250 -9800
execute if score #reset hc_reset matches 25 run spawnpoint @a 2300 250 -9800
execute if score #reset hc_reset matches 26 run tp @a -9100 250 2700
execute if score #reset hc_reset matches 26 run spawnpoint @a -9100 250 2700
execute if score #reset hc_reset matches 27 run tp @a 7800 250 6200
execute if score #reset hc_reset matches 27 run spawnpoint @a 7800 250 6200
execute if score #reset hc_reset matches 28 run tp @a -6600 250 -8900
execute if score #reset hc_reset matches 28 run spawnpoint @a -6600 250 -8900
execute if score #reset hc_reset matches 29 run tp @a 5900 250 9700
execute if score #reset hc_reset matches 29 run spawnpoint @a 5900 250 9700
execute if score #reset hc_reset matches 30 run tp @a -9800 250 -7300
execute if score #reset hc_reset matches 30 run spawnpoint @a -9800 250 -7300

# Borrar progreso
clear @a
experience set @a 0 points
experience set @a 0 levels
advancement revoke @a everything

# Quitar efectos
effect clear @a

# Vida y hambre completas
effect give @a minecraft:instant_health 1 255 true
effect give @a minecraft:saturation 1 255 true

# Gracia: 30s de caida lenta, resistencia y fuego
effect give @a minecraft:slow_falling 30 0 true
effect give @a minecraft:resistance 20 4 true
effect give @a minecraft:fire_resistance 20 0 true

time set day
weather clear

# Limpiar nombres del mundo anterior
tag @e remove hc_named

# Resetear estado
scoreboard players reset @a hc_deaths
tag @a remove dead_culprit
scoreboard players set #state hc_state 0
scoreboard players set #timer hc_timer 0

# Sonido y titulo
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 2 1
title @a times 10 70 20
title @a title {"text":"NUEVO INTENTO!","color":"green","bold":true}
title @a subtitle {"text":"30s de gracia. No la caguen otra vez!","color":"yellow"}
tellraw @a [{"text":"[HARDCORE PERU] ","color":"green","bold":true},{"text":"Mundo reiniciado. A empezar!","color":"aqua"}]
