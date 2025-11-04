#!/bin/bash
echo "Introdueix un numero:"
read numero
if [[ $numero -ge 0 ]]
then
	echo "Numero positiu"
else
	echo "Numero negatiu"
fi
