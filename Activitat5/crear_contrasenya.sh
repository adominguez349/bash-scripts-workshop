#!/bin/bash

condicio="false"

until [ "$condicio" = "true" ]
do
    read -p "Introdueix la contrasenya: " contrasenya

    if [ ${#contrasenya} -lt 8 ]; then
        echo "Ha de tenir almenys 8 caràcters"
    elif [[ ! $contrasenya =~ [A-Z] ]]; then
        echo "Ha de contenir una majúscula"
    elif [[ ! $contrasenya =~ [0-9] ]]; then
        echo "Ha de contenir un número"
    else
        condicio="true"
    fi
done

echo "Contrasenya correcta"
