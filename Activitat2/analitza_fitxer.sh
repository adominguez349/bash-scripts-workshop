#!/bin/bash
echo "Analitzant fitxer..."
read -p "Nom del fitxer a analitzar: " fitxer
resultat="resultats.log"
error="errors.log"
echo "Procés completat! Revisa resultats.log i errors.log"
echo "===================================================" >> "$resultat" 2>>"$error"
echo "Fitxer analitzat: $fitxer" >> "$resultat" 2>>"$error"
echo "Línies útils: $(grep -cve '^\s*$' "$fitxer" 2>>"$error")" >> "$resultat" 2>>"$error"
echo "Paraules totals: $(wc -w < "$fitxer" 2>>"$error")" >> "$resultat" 2>>"$error"
echo "Caràcters totals: $(wc -m < "$fitxer" 2>>"$error")" >> "$resultat" 2>>"$error"
echo "Data: $(date)" >> "$resultat" 2>>"$error"
echo "Executat per: $USER" >>"$resultat" 2>>"$error"
echo "Directori: $PWD" >> "$resultat" 2>>"$error"
echo "PID Shell: $$" >> "$resultat" 2>>"$error"
echo "===================================================" >> "$resultat" 2>>"$error"


