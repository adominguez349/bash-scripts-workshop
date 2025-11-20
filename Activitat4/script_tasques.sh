#!/bin/bash
quiensoy=$(whoami)
if [[ $quiensoy == "root" ]]
then
	echo "Has de escollir quina tasca vols que es realitzi posant un numero."
	echo "1: Verificar espai disc."
	echo "2: Creació copia de seguretat base de dades"
	echo "3: Creació d'usuaris"
	read -p "Posa un numero del 1 al 3: " numero
	case $numero in #És similar al switch de PHP, segons el numero que introdueixis executarà un bloc diferent.
    	1)
        	limitacio=90
        	espai=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g') #Aquesta variable obte el us del disc principal, extreu la columna del percentatge del disc i elimina el simbol½

        	if [[ $espai -gt $limitacio ]]
        	then
                	echo "El $espai% d'espai del disc està per sobre del limit estipulat: $limitacio%"
        	else
                	echo "El disc està correcte"
       	 	fi
        	;;
    	2)
                nom_db="Dades"
                echo "Introdueix l'usuari de mysql:"
                read usuari
                echo "Introdueix la contrasenya del usuari:"
                read -s password
		mkdir /backup
                DATA=$(date +%F) #Format de la data
                mysqldump -u$usuari -p$password $nom_db > /backup/db-$DATA.sql #Exporta la base de dades en un arxiu sql, dins de /backup
        	;;
	3)
		while true; do #Iniciem un bucle que s'anirà repetint fins que el usuari que ha introduit no es repeteixi
			read -p "Posa el nom del nou usuari: " nou_usuari
			if id "$nou_usuari" &>/dev/null; then #Comprova que el usuari existeixi i oculta la sortida.
				echo "El usuari existeix, torna-ho a intentar"
			else
				useradd $nou_usuari
				echo "S'ha creat el usuari"
                        	echo "$nou_usuari:super3" | chpasswd #Aquesta comanda crea la contrasenya per defecte
                        	passwd --expire $nou_usuari #En aquesta li especifiquem que canviï la contrasenya un cop a iniciat sessió
				break #Per finalitzar el bucle un cop s'ha creat el usuari.
			fi
		done
		;;
    	*)
        	echo "Ninguna de les opcions es valida"
        	;;
	esac
else
	echo "No tens privilegis per executar aquest script"
fi
