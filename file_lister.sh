#!/bin/bash
# verifica se è stata inserita l'opzione -n
if [ "$1" == "-n" ]; then
	#verifica se è stato inserito un path
	if [ -n $1 ]; then
		ls -l $1 | grep '^-' | awk '$5 != 0 {printf "file: %s size: %d\n", $NF, $5}'
	else
		ls -l | grep '^-' | awk '$5 != 0 {printf "file: %s size: %d\n", $NF, $5}'
	fi	
else
	#verifica se è stato inserito un path
	if [ -n $1 ]; then
		ls -l $1 | grep '^-' | awk '{printf "file: %s\n", $NF}'
	else
		ls -l | grep '^-' | awk '{printf "file: %s\n", $NF}'
	fi
fi