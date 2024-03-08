### Linux tiene 3 partes principales:

- **Kernel**: Es el núcleo del Sistema Operativo y se gestionan los recursos de hardware como la memoria, el procesamiento y los dispositivos periféricos conectados al computador.
- **Shell**: Es el interprete, un programa con una interfaz de usuario permitiendo ejecutar las aplicaciones en un lenguaje de alto nivel y procesarlas en un lenguaje de bajo nivel para manipular y controlar aplicaciones y programas como nuestro proyecto.
- **Aplicaciones**: Son las aplicaciones con las que interactuamos día a día.

### Tipos de Shells:

- **SH**:También conocida como Shell Bourne, es la primera shell creada para un sistema operativo linux, se puede utilizar actualmente, pero se perderían funcionalidades como autocompletar archivos o el historial de comandos.

- **KSH**:Escrita por el programador David Korn. Intenta combinar las características de la CSH, TCSH y SH

- **CSH**: En una shell diseñada para que los usuarios puedan escribir programas de scripting de shell con una sintaxis muy simiar a la de C. En muchos sistemas como Red Hat, csh es tcsh, una versión mejorada de csh.

- **BASH**: También conocida como Shell Bourne-Again, es una versión actualizada de SH creada por la Free Software Fundation. Es una de la shell más utilizada y conocida en el mundo. Incorpora alguna de las funcionalidades más avanzadas de KSH, CSH, SH y TCSH. Una de la funcionalidades más destacables de esta shell es la opción de ejecutar múltiples programas en segundo plano a la vez.

- **ZSH:** Potente intérprete de comandos que puede funcionar como shell interactiva y como intérprete de lenguaje de scripting. aún siendo compatible con Bash.

Algunos comandos para conocer información sobre el resto de comandos:

- `man [comando]`
- `info [comando]`

---

## Ver permisos de un archivo

```bash
ls -l 1_utilityPostgres.sh
```

**<u>*r:*</u> permiso de lectura**

**<u>*w:*</u> permiso de escritura**

**<u>*x:*</u> permiso de ejecucion**

| Propietario | Grupo | Todos  |
| ----------- | ----- | ------ |
| owner       | group | anyone |
| rwx         | rwx   | rwx    |

 *rwx rwx rwx*

Los tipos de permisos más comunes, o su combinación, son los siguiente:

**666 ( RW / RW / RW)**
Esta opción permite que todos los usuarios puedan leer y escribir en un archivo.

**777 ( RWX / RWX /RWX)**
Esta opción permite que todos los usuarios puedan leer, escribir y ejecutar en el archivo o carpeta

**755 (RWX / RX / RX)**
Con este permiso el propietario del archivo puede leer, escribir y 
ejecutar en el archivo mientras que los demás leer y escribir en el 
archivo mas no ejecutar.

**644 (RW / R / R)**

Con este permiso el propietario puede leer y escribir en el archivo mientras los demás solo pueden leer.

**700 (RWX /—)**
Con este permiso el propietario tiene el control total del archivo 
mientras que los demás usuarios no tendrán acceso de ningún tipo al 
archivo.

| R   | W   | X   | Representación | Significado                                | Resultado |
| --- | --- | --- |:--------------:| ------------------------------------------ | --------- |
| 0   | 0   | 0   | ---            | Ningún permiso.                            | 0         |
| 0   | 0   | 1   | --x            | Permiso de ejecución.                      | 1         |
| 0   | 1   | 0   | -w-            | Permiso de escritura.                      | 2         |
| 0   | 1   | 1   | -wx            | Permiso de escritura y ejecución.          | 3         |
| 1   | 0   | 0   | r--            | Permiso de lectura.                        | 4         |
| 1   | 0   | 1   | r-x            | Permiso de lectura y ejecución.            | 5         |
| 1   | 1   | 0   | rw-            | Permiso de lectura y escritura.            | 6         |
| 1   | 1   | 1   | rwx            | Permiso de lectura, escritura y ejecución. | 7         |

Con el comando chmod se pueden cambiar los permisos de los archivos de dos formas, una es usando los **símbolos (rwx)** y otra es con el **sistema octal**.

### ¿Cómo cambiar los permisos de un archivo (chmod)?

Es bastante sencillo cambiar los permisos de forma simbólica. Para esto, hay que escribir después del comando **chmod** el símbolo del usuario, luego el operador y por último el permiso que quieres agregar o quitar.

#### Uso de la forma simbólica

```bash
chmod [simboloDelUsuario][operador][permiso][archivoParaCambiarSusPermisos]
```

| Owner (u) | Group (g) | World (o) |
| --------- | --------- | --------- |

| Operador | Función            |
| -------- | ------------------ |
| +        | Añade un permiso.  |
| -        | Quita un permiso.  |
| =        | Asigna un permiso. |

Supongamos que queremos añadirle permiso de escritura al grupo, entonces tenemos que escribir lo siguiente:

```bash
chmod g+w ejemplo.txt
```

Puedes cambiar varios permisos de varios usuarios al mismo tiempo, 
por ejemplo, si quisieras agregar el permiso de escritura y ejecución al
 grupo y a otros, sería así:

```bash
chmod go+wx [archivo]
```

Y si quieres permisos diferentes para cada usuario, solo sepáralos por comas:

```bash
chmod u+r,g=w [archivo]
```

En ese comando se le añadió el permiso de lectura al dueño y de escritura al grupo. **¡No agregues espacio en las comas o provocarás un error!**

#### Uso de forma en octales

También puedes cambiar los permisos usando su forma octal, por ejemplo el conjunto de permisos **rwxr-xr-x** en su forma octal es **755**.

```bash
chmod 755
```

---

## Ejecutar comandos .sh

```bash
bash 1_utilityPostgres.sh
```

```bash
sh 1_utilityPostgres.sh
```

```bash
./1_utilityPostgres.sh
```

```bash
. 1_utilityPostgres.sh
```

```bash
source 1_utilityPostgres.sh
```

#### Validar nombre unico para archivos .sh

```bash
type => nombre y ubicación
```

```bash
type -a => Todos los archivos encontrados
```

```bash
type -t => Tipo de archivo
```

##### Permisos para ejecutar archivo de bash

```bash
chmod +x 2_variables.sh
```

---

Variables globales / OS environment variables

```bash
sudo vim /etc/profile
```

---

#### Exportar variables

```bash
export $variableName$
```

---

## Script con Argumentos

Hay algunos identificadores para cuando ejecutamos un script con argumentos

**`$0`**: Se refiere al nombre del Script

**`$1 - $2 - $3 ...` al `${10}`:** Se refiere al número de argumento. Si es más de uno lo colocamos dentro de llaves.

**`$#`**: Es útil para conocer el número de argumentos enviados.

**`$*`**: Con este podemos conocer todos los argumentos enviados. Contiene todos los parámetros como un solo valor.

`${!#}`: Forma de obtener el último parámetro

 `$@`: Es una variable que contiene todos los parámetros como valores separados para que se pueda iterar sobre ellos.

---

## Shifting parameter variable / Variable de parámetro de cambio

`shift` : ejemplo en este archivo, 2_shifting_parameter_variable.sh

El comando shift mueve cada variable de parámetro hacia la izquierda:

variable `$3 ==> variable $2`.

variable `$2 ==> variable $1`.

variable `$1 ==> descartada`.

variable `$0 ==> (el nombre del script) tal como está.`

Tenga cuidado al usar el comando shift, ya que no puede recuperar el parámetro desplazado.

---

## Sustitución de Comandos en variables

Para la sustitución de comandos es importante tener en cuenta que el resultado servirá para realizar otras tareas de otras sentencias de nuestro programa.

Las dos maneras de hacerlo:

- Usando el backtick caracter. (`)
- Usando el signo de dólar con el formato $(comando)

---

### Debug en Script

Para realizar debugging en un script tenemos dos opciones en el comando de bash:

- **-v**: Utilizado para ver el resultado detallado de nuestro script, evaluado línea por línea.
- **-x**: Utilizado para desplegar la información de los comandos que son usados, capturando el comando y su salida.

```bash
sh -v bash_file.sh
sh -x bash_file.sh
```

---

# Scripts interactivos

### Capturar información del usuario

Para poder capturar información tenemos dos formas dentro de un programa Bash.

- Utilizando en conjunto con el comando **echo**
- Utilizando directamente el comando **read**

Una de las opciones más utilizadas para **Read**

+ **-p**: Permite ingresar una frase o *prompt* antes de pedir el dato.

+ **-s**: Modo Sigiloso. No muestra ningún caracter en la terminal, util para contraseñas o información sensible.

+ **-n [num]**: Permite leer como máximo n caracteres.

+ **-r**: Toma el botón de retroceso o *backspace* como un caracter y no borra ningun otro caracter previamente escrito.

---

## Validar información

Para el proceso de validación de información tenemos dos maneras de hacerlo:

- Para validar tamaños se utiliza el siguiente comando: **read -n <numero_caracteres>**
- Para validar el tipo de datos se utilizan las **expresiones regulares**

---

# Paso de parámetros y opciones

+ **-n**: el numero de caracteres que puede tener el párametro, cuando llega a ese numero no deja ingresar mas caracteres

---

## Sentencias if / else

Los operadores lógicos estándar (>, <, etc.) se usan para comparación lexicográfica de cadenas.

Para comparar números se usan los operadores:

+ **-eq: Igual a**

+ **-ne: Diferente a**

+ **-gt: Mayor que**  

+ **-ge: Mayor o igual que**     

+ **-lt: Menor que**     

+ **-le: Menor o igual que** (lower or equals)

**[[]]** tiene más características que **[]** (como manejo de expresiones regulares y otros operadores de validación) 

**(())** es para validaciones aritméticas (sólo números implicados; preferible en especial cuando hay operaciones aritméticas). Usa los operadores lógicos estándar.

---
