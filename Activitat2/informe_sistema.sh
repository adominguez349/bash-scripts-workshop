#!/bin/bash
echo "Nom usuari USER: $USER"
echo "Nom usuari whoami: $(whoami)"
echo
echo "Directori personal: $HOME"
echo "Directori actual: $PWD"
echo
echo "Contingut del directori:"
ls
echo
echo "Numero d'elements del directori: $(ls | wc -l)"
echo
echo "PID del shell: $$"
echo "Codi de l'ultima ordre: $?"
