#!/bin/bash
echo "Log Doctor - analitzador de logs"

if [ -n "$1" ]; then
    log=$1
else
    read -p "Nom del log: " log
fi

while [ ! -r "$log" ]; do
    read -p "No existeix el log, torna-ho a provar: " log
done

echo "Log: $log"

total=$(wc -l < "$log")
error=$(grep -c "ERROR" "$log")
warning=$(grep -c "WARNING" "$log")

echo "Total de linies: $total"
echo "Linies amb errors: $error"
echo "Linies amb avisos: $warning"

read -p "Quants informes vols generar: " informes
if ! [[ "$informes" =~ ^[0-9]+$ ]] || [ "$informes" -le 0 ]; then
    echo "Error: has d'introduir un nombre enter positiu."
    exit 1
fi

for (( i=1; i<=informes; i++ ))
do
    echo "Total: $total" > informe_$i.txt
    echo "Errors: $error" >> informe_$i.txt
    echo "Warnings: $warning" >> informe_$i.txt
done
