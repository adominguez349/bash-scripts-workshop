#!/bin/bash
condicio="true"
while [ "$condicio" = "true" ]
do
	read -p "Introdueix un usuari: " usuari
	if id "$usuari" &>/dev/null; then
		getent passwd "$usuari"
		id "$usuari"
		condicio="false"
	else
		echo "El usuari no existeix"
	fi
done
