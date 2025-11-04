#!/bin/bash
echo "Especifica si es un fitxer o directori: "
read file
if [[ -d $file ]]
then
	echo "Es un directori"
elif [[ -f $file ]]
then
	echo "És un fitxer"
	extensio="${file##*.}"
	if [[ "$extensio" != "$file" ]]
	then
		echo "Aquesta es la seva extensió: .$extensio"
	else
		echo "No te extensió"
	fi
else
	echo "La ruta o el arxiu no existeix"
fi
