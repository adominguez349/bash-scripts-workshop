#!/bin/bash
echo "Introdueix un numero negatiu"
read num_negatiu
if [[ $num_negatiu -lt 0 ]]
then
	echo "Es un numero negatiu"
else
	echo "No es un numero negatiu"
fi
