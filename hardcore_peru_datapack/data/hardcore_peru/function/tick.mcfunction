# ==========================================================
# HARDCORE PERU - TICK FUNCTION (20 veces por segundo)
# ==========================================================

# Auto-inicializar si el datapack nunca corrió load (flag independiente del estado)
execute unless score #ok hc_loaded matches 1 run function hardcore_peru:load

# --- DETECCION DE MUERTE ---
# Solo actuar cuando no hay cinemática activa (estado 0)
execute if score #state hc_state matches 0 if entity @a[scores={hc_deaths=1..}] run function hardcore_peru:on_death
execute if score #state hc_state matches 0 if entity @a[gamemode=spectator] run function hardcore_peru:on_death

# --- CINEMATICA ACTIVA ---
execute if score #state hc_state matches 1 run function hardcore_peru:death_timer

# --- NOMBRADO DE ENTIDADES (cada 1 segundo = 20 ticks) ---
scoreboard players add #anim hc_timer 1
execute if score #anim hc_timer matches 20.. run scoreboard players set #anim hc_timer 0
execute if score #anim hc_timer matches 0 run function hardcore_peru:name_animals
execute if score #anim hc_timer matches 0 run function hardcore_peru:name_monsters
