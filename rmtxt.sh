#!/bin/bash
# la stringa passata in ingresso viene identificata con $1

if [ -n "$1" ]; then 
	rm -v $(egrep -l "$1" *.txt | uniq)
else
	echo "Error:No string entered"
fi

