#!/bin/bash
echo "Especifica el nom del fitxer si estas en el directori o la seva ruta si esta en una altre carpeta: "
read file
[[ -w $file ]] && echo "Es un arxiu de escriptura"
[[ -r $file ]] && echo "Es un arxiu de lectura"
[[ -x $file ]] && echo "Es un arxiu executable"
