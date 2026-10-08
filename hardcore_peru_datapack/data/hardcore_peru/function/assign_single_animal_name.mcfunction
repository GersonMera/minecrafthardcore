# Genera numero aleatorio del 1 al 32
execute store result score #rnd hc_rand run random value 1..32

# Nombres peruanos para animales - sintaxis CustomName string directa (compatible 1.21)
execute if score #rnd hc_rand matches 1 run data merge entity @s {CustomName:'"El Chupapinga"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 2 run data merge entity @s {CustomName:'"Kausa Chipi"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 3 run data merge entity @s {CustomName:'"Tio Mostacero"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 4 run data merge entity @s {CustomName:'"Pata Brava"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 5 run data merge entity @s {CustomName:'"El Cabeceador"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 6 run data merge entity @s {CustomName:'"Viejo Lesbiano"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 7 run data merge entity @s {CustomName:'"Cara de Habla Vas a Caer"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 8 run data merge entity @s {CustomName:'"El Pendejazo"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 9 run data merge entity @s {CustomName:'"Choche Bamba"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 10 run data merge entity @s {CustomName:'"El Choro de la Esquina"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 11 run data merge entity @s {CustomName:'"Cuy con Esteroides"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 12 run data merge entity @s {CustomName:'"Cabeza de Huaral"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 13 run data merge entity @s {CustomName:'"Gordo Pajero"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 14 run data merge entity @s {CustomName:'"Kausa Sin Sal"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 15 run data merge entity @s {CustomName:'"El Toca Chichis"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 16 run data merge entity @s {CustomName:'"El Calato de Barranco"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 17 run data merge entity @s {CustomName:'"Tio Huachafoso"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 18 run data merge entity @s {CustomName:'"Cara de Chimenea"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 19 run data merge entity @s {CustomName:'"Loro de Tarapoto"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 20 run data merge entity @s {CustomName:'"El Agarrao"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 21 run data merge entity @s {CustomName:'"Cholo Power"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 22 run data merge entity @s {CustomName:'"El Traga Monedas"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 23 run data merge entity @s {CustomName:'"Pisco Quebranta"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 24 run data merge entity @s {CustomName:'"El Conchasumadre"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 25 run data merge entity @s {CustomName:'"Chala Chueca"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 26 run data merge entity @s {CustomName:'"Pico de Loro"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 27 run data merge entity @s {CustomName:'"El Manicero"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 28 run data merge entity @s {CustomName:'"Chicha Morada con Pichi"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 29 run data merge entity @s {CustomName:'"Pollo a la Brasa Callejero"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 30 run data merge entity @s {CustomName:'"El Soplon de Barrios Altos"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 31 run data merge entity @s {CustomName:'"Pata con Pata"',CustomNameVisible:1b}
execute if score #rnd hc_rand matches 32 run data merge entity @s {CustomName:'"Ronco de Comas"',CustomNameVisible:1b}

# Marcar como nombrado para no repetir
tag @s add hc_named
