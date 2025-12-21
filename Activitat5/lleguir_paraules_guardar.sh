#!/bin/bash
paraules=""
while [ "$paraules" != ":>" ]
do
	read -p "Posa paraules: " paraules
	echo $paraules >> paraules.txt
done
