#!/bin/bash
echo "Introdueix el fitxer:"
read file
if [[ -e $file ]]
then
   echo "El fitxer $file existeix"
   echo "Extensió: $(file -b "$file")"
   if [[ -r $file ]]
   then
      echo "El fitxer $file es llegible"
   else
      echo "El fitxer $file no es llegible"
   fi
   if [[ -w $file ]]
   then
      echo "El fitxer $file es editable"
   else
      echo "El fitxer $file no es editable"
   fi
   if [[ -x $file ]]
   then
      echo "El fitxer $file es executable"
   else
      echo "El fitxer $file no es executable"
   fi
else
   echo "No existeix el fitxer"
fi
