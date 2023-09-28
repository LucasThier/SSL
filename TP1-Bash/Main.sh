#!/bin/bash

# Nombre del archivo
archivo="breve_historia.txt"

# a) Reemplazar puntos por punto y salto de línea
sed 's/\. /.\n/g' "$archivo" > "A.txt"

# B) Borrar líneas en blanco
sed '/^\s*$/d' "$archivo" > "B.txt"

# C) Puntos A y B Redireccionano la salida
sed 's/\. /.\n/g' "$archivo" | sed '/^\s*$/d' "$archivo" > "breve_historia_2.txt"

# d) Listar oraciones con la palabra "independencia" ignorando Caps
grep -i "independencia" "$archivo"

# e) Listar líneas que empiezan con "El" y terminan con "."
grep "^El.*\.$" "$archivo"

# f) Contar ocurrencias de "peronismo" (aparece 5 veces en el archivo pero imprime 4 ya que se repite 2 veces en una misma oracion)
grep -i -c "peronismo" "$archivo"

# Punto g: Contar oraciones con "Sarmiento" y "Rosas"
grep -i "Sarmiento" "$archivo" | grep -i "Rosas" | wc -l