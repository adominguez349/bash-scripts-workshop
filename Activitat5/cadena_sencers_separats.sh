#!/bin/bash
positiu=0
negatiu=0
zero=0
for i in $@
do
	if [[ $i -gt 0 ]]
	then
		positiu=$((positiu+1))
	elif [[ $i -lt 0 ]]
	then
		negatiu=$((negatiu+1))
	else
		zero=$((zero+1))
	fi
done
echo "Hi han $positiu positius"
echo "Hi han $negatiu negatius."
echo "Hi ha $zero que son iguals a zero"
