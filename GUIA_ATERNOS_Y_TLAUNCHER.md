# 🎮 Guía Completa de Instalación: Hardcore Perú para Aternos y TLauncher

¡Todo tu proyecto ya está creado y empaquetado! Aquí tienes la guía paso a paso, clara y directa, para que tú y tus amigos comiencen a jugar de inmediato.

---

## 📁 Archivos listos en tu carpeta

En `c:\Users\Inss4nire-fort\Desktop\minecraft\` encontrarás:
1. **`hardcore_peru_datapack.zip`**: El sistema del mundo (muerte compartida, reinicio, cinemática, nombres en jerga peruana).
2. **`hardcore_peru_resourcepack.zip`**: El paquete de sonido que reproduce el audio al morir.
3. **`hardcore_peru_datapack/`** y **`hardcore_peru_resourcepack/`**: Las carpetas abiertas por si quieres modificar nombres o cambiar el audio.
4. **`build_packs.py`**: Script de Python que vuelve a crear los archivos `.zip` si llegas a modificar algo.

---

## 🛠️ Paso 1: Configurar Aternos para TLauncher (No Premium)

1. Entra a tu panel de control en [Aternos](https://aternos.org/).
2. Asegúrate de que la versión del servidor sea **Vanilla 1.21.1** o **Paper 1.21.1**.
3. Ve a la pestaña **Opciones** (menú de la izquierda).
4. **IMPORTANTE**: Activa la opción **"No oficial / Craqueado"** (Cracked).
   > Sin esto, nadie con TLauncher podrá entrar al servidor.
5. **Para tener los Corazones de Hardcore**:
   - En **Dificultad**, pon **Difícil** (Hard).
   - En la opción **"Extremo" (Hardcore)** de Aternos, ¡**ACTÍVALA** (ponla en Sí / ON)!
   - Esto hace que Minecraft muestre en tu pantalla los auténticos **corazones de Hardcore**.
   - El Datapack ya está preparado para revivir y devolver a supervivencia (`survival`) a quien muera después de la cinemática de 4 segundos.

---

## 📦 Paso 2: Instalar el Datapack en Aternos

1. En el menú de Aternos, ve a la pestaña **Archivos** (Files).
2. Haz clic en la carpeta `world`.
3. Entra a la carpeta `datapacks` (la ruta será `world/datapacks`).
4. Haz clic en el botón amarillo de **Subir** (Upload) en la esquina superior derecha y selecciona **Archivo**.
5. Selecciona y sube el archivo **`hardcore_peru_datapack.zip`**.
6. Inicia (o reinicia) el servidor.
7. Al entrar, verás en el chat en letras doradas:  
   `[HARDCORE PERÚ] ¡Sistema cargado con éxito! Si uno muere, todos se van a la m*erda.`

---

## 🔊 Paso 3: Instalar el Audio de Muerte (Resource Pack)

Tienes **dos opciones**:

### Opción A (La más fácil y recomendada para jugar con amigos)
1. Envía el archivo `hardcore_peru_resourcepack.zip` a tus amigos por Discord o WhatsApp.
2. Cada uno presiona en su teclado: `Tecla Windows + R`.
3. Escribe: `%appdata%\.minecraft\resourcepacks` y presiona Enter.
4. Pega allí el archivo `hardcore_peru_resourcepack.zip`.
5. Abre Minecraft en TLauncher, entra a **Opciones** -> **Paquetes de recursos** y pasa el paquete a la columna de la derecha para activarlo. ¡Listo!

### Opción B (Descarga automática al entrar al servidor)
1. Ve a la web gratuita [mc-packs.net](https://mc-packs.net/).
2. Sube el archivo `hardcore_peru_resourcepack.zip`.
3. La página te dará un enlace de descarga directa y un código **SHA-1 Hash**.
4. En Aternos, ve a **Archivos** -> abre el archivo `server.properties`:
   - Busca la línea `resource-pack=` y pega el enlace que te dio mc-packs.
   - Busca la línea `resource-pack-sha1=` y pega el hash.
   - Busca `require-resource-pack=` y ponlo en `true`.
5. Guarda los cambios. Cada vez que alguien entre al server con TLauncher, el juego le descargará el audio automáticamente.

---

## 🎵 ¿Cómo cambiar el audio de muerte por el que tú quieras?

El paquete viene por defecto con el clásico y gracioso sonido del *Gong de Taco Bell*. Si quieres poner tu propio audio, meme o voz:
1. Consigue tu archivo de audio (puede ser MP3, WAV, etc.).
2. Conviértelo a formato **.ogg** (puedes usar la web gratuita [convertio.co/es/mp3-ogg/](https://convertio.co/es/mp3-ogg/)).
3. Nómbralo exactamente: **`death_sound.ogg`**.
4. Ve a la carpeta:
   `c:\Users\Inss4nire-fort\Desktop\minecraft\hardcore_peru_resourcepack\assets\hardcore_peru\sounds\`
5. Reemplaza el archivo que está allí con tu nuevo `death_sound.ogg`.
6. Haz doble clic en el archivo `build_packs.py` (o abre una terminal y ejecuta `python build_packs.py`) para actualizar el archivo `.zip`. ¡Listo!

---

## 🦙 ¿Cómo funciona la Jerga Peruana en los Animales?

Cada animal que aparezca en el mundo (vacas, cerdos, ovejas, pollos, caballos, llamas, etc.) recibirá automáticamente un nombre visible de una lista de **32 jergas y albures peruanos**, entre ellos:
* *El Chupapinga*
* *Kausa Chipi*
* *Tío Mostacero*
* *Pata Brava*
* *El Cabeceador*
* *Cara de Habla Vas a Caer*
* *El Pendejazo*
* *Cuy con Esteroides*
* *Cabeza de Huaral*
* *El Calato de Barranco*
* *Cholo Power*
* *El Conchasumadre*
* *Chala Chueca*
* *Chicha Morada con Pichi*
* *Pollo a la Brasa Callejero*

> Si quieres agregar más nombres, puedes abrir el archivo:  
> `hardcore_peru_datapack/data/hardcore_peru/function/assign_single_animal_name.mcfunction`  
> y añadir las líneas que desees.

---

## 🧟 ¿Y los Monstruos? (Zombies, Creepers, Arañas, Esqueletos...)

Los monstruos y mobs hostiles también reciben automáticamente nombres de callejón, albures y jergas peruanas de barrio:
* **Zombies / Ahogados**: *El Pirañita de Grau*, *El Choro de San Juan*, *El Muerto de Hambre*, *El Ahogao de la Herradura*, *El Huaco Viviente*, *El Bota Plomo*.
* **Creepers**: *Kamikaze de Gamarra*, *Choche Dinamita*, *El Revienta Calzones*, *Extorsionador de Construcción*.
* **Esqueletos / Bogged**: *El Francotirador del Callao*, *El Calaca Chipi*, *Seco y Volteado*, *El Desnutrido de Chosica*, *El Manco con Flechas*.
* **Arañas**: *La Viuda de Comas*, *La Trepadora Tóxica*.
* **Endermen / Brujas**: *El Mirón Mañoso*, *La Bruja de Cachiche*, *El Fumón de Puente Nuevo*, *Tío Terokalero*.

> Si quieres modificar los nombres de los monstruos, edita el archivo:  
> `hardcore_peru_datapack/data/hardcore_peru/function/assign_single_monster_name.mcfunction`.

---

## 🧪 Comandos Útiles para Probar en el Servidor

Si eres operador (`/op tu_nombre` en la consola de Aternos):
* **Probar la cinemática de muerte sin morir**:
  ```mcfunction
  /function hardcore_peru:on_death
  ```
* **Probar que el audio funciona**:
  ```mcfunction
  /playsound hardcore_peru:death_sound master @a ~ ~ ~ 5 1
  ```
* **Forzar el reinicio manual del mundo**:
  ```mcfunction
  /function hardcore_peru:reset_world
  ```
* **Recargar el datapack si haces cambios**:
  ```mcfunction
  /reload
  ```
