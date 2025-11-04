#!/bin/bash
if [[ $# == 3 ]]
then
	if [[ "$2" =~ ^-?[0-9]+$ && "$3" =~ ^-?[0-9]+$ ]]
	then
		if [[ $1 == "add" ]]
		then
			echo "La suma de $2 + $3 = $(($2 + $3))"
		elif [[ $1 == "subtract" ]]
		then
			echo "La resta de $2 + $3 = $(($2 - $3))"
		elif [[ $1 == "multiply" ]]
		then
			echo "La multiplicació de $2 * $3 = $(($2 * $3))"
		elif [[ $1 == "divide" ]]
		then
			if [[ $3 -gt 0 ]]
			then
				echo "La divisió de $2 / $3 = $(($2 / $3))"
			else
				echo "El segon valor es un 0"
			fi
		else
			echo "No es niguna d'aquestes opcions"
		fi
	else
		echo "no son numeros valids"
	fi
else
	echo "no hi ha tres arguments"
fi

