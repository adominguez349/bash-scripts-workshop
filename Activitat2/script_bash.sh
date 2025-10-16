#!/bin/bash
echo "Nom variable global: "
read vglobal
#Mostra el valor de vglobal
echo "Resultat: ${!vglobal}"
echo "Arguments: $@"
echo "Valor retorn: $?"
echo "PID shell: $$"
