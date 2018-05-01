#!/bin/bash
if [ -n $1 ]
then
	egrep -l '[a-z]+\.[a-z]+@[a-z]+\.[a-z]+' $1/[a-z]*[0-9].txt
	#soluzione alternativa
	#awk '/[a-z]+\.[a-z]+@[a-z]+\.[a-z]+/ {print FILENAME}' $1/[a-z]*[0-9].txt
else
	egrep -l '[a-z]+\.[a-z]+@[a-z]+\.[a-z]+' ./[a-z]*[0-9].txt
fi