# Genera numero aleatorio del 1 al 32
execute store result score #rnd hc_rand run random value 1..32

# Nombres peruanos para monstruos - sintaxis CustomName string directa (compatible 1.21)
execute if score #rnd hc_rand matches 1 run data merge entity @s {CustomName:'"El Piranita de Grau"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 2 run data merge entity @s {CustomName:'"El Choro de San Juan"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 3 run data merge entity @s {CustomName:'"Cobrador de Chosicano"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 4 run data merge entity @s {CustomName:'"El Muerto de Hambre"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 5 run data merge entity @s {CustomName:'"Kamikaze de Gamarra"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 6 run data merge entity @s {CustomName:'"El Francotirador del Callao"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 7 run data merge entity @s {CustomName:'"El Calaca Chipi"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 8 run data merge entity @s {CustomName:'"La Viuda de Comas"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 9 run data merge entity @s {CustomName:'"El Fumon de Puente Nuevo"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 10 run data merge entity @s {CustomName:'"El Roba Celulares"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 11 run data merge entity @s {CustomName:'"El Bota Plomo"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 12 run data merge entity @s {CustomName:'"La Bruja de Cachiche"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 13 run data merge entity @s {CustomName:'"El Ahogao de la Herradura"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 14 run data merge entity @s {CustomName:'"El Miron Manoso"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 15 run data merge entity @s {CustomName:'"El Sicario con Resaca"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 16 run data merge entity @s {CustomName:'"Seco y Volteado"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 17 run data merge entity @s {CustomName:'"El Revienta Calzones"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 18 run data merge entity @s {CustomName:'"Choche Dinamita"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 19 run data merge entity @s {CustomName:'"Extorsionador de Construccion"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 20 run data merge entity @s {CustomName:'"El Cara de Crimen"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 21 run data merge entity @s {CustomName:'"La Trepadora Toxica"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 22 run data merge entity @s {CustomName:'"El Huaco Viviente"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 23 run data merge entity @s {CustomName:'"El Clorito de Caqueta"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 24 run data merge entity @s {CustomName:'"El Desnutrido de Chosica"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 25 run data merge entity @s {CustomName:'"El Malparido Nocturno"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 26 run data merge entity @s {CustomName:'"El Marciano con Pichi"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 27 run data merge entity @s {CustomName:'"El Raquetero de Surquillo"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 28 run data merge entity @s {CustomName:'"El Kausa Machete"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 29 run data merge entity @s {CustomName:'"El Jalador de Mesa Redonda"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 30 run data merge entity @s {CustomName:'"Tio Terokalero"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 31 run data merge entity @s {CustomName:'"El Manco con Flechas"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 32 run data merge entity @s {CustomName:'"El Rompeportones"',CustomNameVisible:1b}

# Marcar como nombrado para no repetir
tag @s add hc_named
