#!/bin/bash
echo "Introdueix un numero:"
read numero
if [[ $numero == 0 ]]
then
	echo "Es igual a 0"
else
	echo "No es igual a 0"
fi
