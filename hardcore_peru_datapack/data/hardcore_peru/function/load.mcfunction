# ==========================================================
# HARDCORE PERÚ - INICIALIZACIÓN (tolerante a /reload múltiple)
# ==========================================================

# Crear scoreboards solo si no existen (evita el error "already exists" que detiene el init)
scoreboard objectives add hc_deaths deathCount "Muertes"
scoreboard objectives add hc_timer dummy "Contador"
scoreboard objectives add hc_state dummy "Estado"
scoreboard objectives add hc_rand dummy "Aleatorio"
scoreboard objectives add hc_reset dummy "Reinicios"
scoreboard objectives add hc_loaded dummy "Init"

# Marcar sistema como cargado (flag independiente del estado del juego)
scoreboard players set #ok hc_loaded 1

# Inicializar valores de estado solo si faltan
execute unless score #state hc_state matches 0..2 run scoreboard players set #state hc_state 0
execute unless score #timer hc_timer matches 0.. run scoreboard players set #timer hc_timer 0
execute unless score #reset hc_reset matches 0.. run scoreboard players set #reset hc_reset 0
execute unless score #anim hc_timer matches 0.. run scoreboard players set #anim hc_timer 0

# NOTA: gamerule NO se puede usar en .mcfunction de datapacks.
# Ejecuta esto UNA VEZ desde la consola de Aternos manualmente:
#   gamerule doImmediateRespawn true
#   gamerule showDeathMessages true

# Quitar etiqueta hc_named de todos los seres para que reciban nombre inmediatamente
tag @e remove hc_named

# Confirmación de carga exitosa
tellraw @a [{"text":"\n[HARDCORE PERU] ","color":"gold","bold":true},{"text":"Sistema cargado. Si alguien muere, perdemos todos.\n","color":"yellow"}]
