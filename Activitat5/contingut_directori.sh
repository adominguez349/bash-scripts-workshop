#!/bin/bash
condicio="false"
until [ "$condicio" = "true" ]
do
read -p "introdueix la ruta del directori: " ruta
if [[ -d "$ruta" ]]
then
	[[ -w $ruta ]] && echo "El directori es de escriptura"
	[[ -r $ruta ]] && echo "El directori es de lectura"
	[[ -x $ruta ]] && echo "El directori es de executable"
	ls
	arxius=$(find "$ruta" -type f | wc -l)
	carpetes=$(find "$ruta" -type d | wc -l)
	echo "Hi ha $arxius arxius i $carpetes carpetes."
	condicio="true"
else
	echo "La ruta no existeix"
fi
done

