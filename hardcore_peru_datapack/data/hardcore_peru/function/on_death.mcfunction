# ==========================================================
# HARDCORE PERU - ON DEATH (cinemática al morir alguien)
# ==========================================================

# Etiquetar al culpable (quien tiene hc_deaths >= 1 o esta en espectador por hardcore)
tag @a[scores={hc_deaths=1..}] add dead_culprit
tag @a[gamemode=spectator] add dead_culprit

# Cambiar estado a 1 (cinematica activa) y resetear timer
scoreboard players set #state hc_state 1
scoreboard players set #timer hc_timer 0

# Mensaje en chat
tellraw @a [{"text":"==================================================","color":"dark_red","bold":true}]
tellraw @a [{"text":"[HARDCORE PERU] ","color":"gold","bold":true},{"text":"UN COMPADRE LA CAGO! ","color":"red","bold":true},{"selector":"@a[tag=dead_culprit]","color":"yellow","bold":true},{"text":" SE FUE AL OTRO MUNDO.","color":"red","bold":true}]
tellraw @a [{"text":"El mundo se reinicia en 4 segundos...","color":"yellow","italic":true}]
tellraw @a [{"text":"==================================================","color":"dark_red","bold":true}]

# Titulo en pantalla
title @a times 5 70 15
title @a title {"text":"PARTIDA PERDIDA!","color":"dark_red","bold":true}
title @a subtitle {"text":"Por culpa de alguien se va todo al carajo...","color":"gold"}

# Efectos de inmovilizacion dramatica
effect give @a minecraft:slowness 6 10 true
effect give @a minecraft:jump_boost 6 1 true
effect give @a minecraft:mining_fatigue 6 10 true
effect give @a minecraft:blindness 6 1 true
effect give @a minecraft:darkness 6 1 true

# Rayo y sonidos en la ubicacion de la muerte
execute at @a[tag=dead_culprit,limit=1] run summon minecraft:lightning_bolt ~ ~ ~
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 5 0.7
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 5 0.5
