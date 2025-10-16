#!/bin/bash
echo "Sense cometes"
echo $*
echo "Amb cometes"
printf "%s\n" "$*"

echo "Sense cometes"
echo $@
echo "Amb cometes"
printf "%s\n" "$@"
