#!/bin/bash
read -p "Usuari: " usuari
#L'opció -s és per no veure quan introdueixes la contrasenya
read -s -p "Contrasenya: " contrasenya; echo
echo "${usuari} ****"
