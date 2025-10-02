#!/bin/bash
# Adrià
# 2/10/2025
# Et recompte les linies que son uttils i si hi ha un error ho guarda en el arxiu errors
echo "Començant el recompte de línies útils..."
cat /etc/passwd | grep -v '^$' | wc -l > errors.log 2>&1 > linies.log
sudo date >> linies.log
echo "Procés completat! Consulta linies.log i errors.log"
