#!/bin/bash
if [ $# == 2 ]; then
	man -t $1 $2 > $2.ps && ps2pdf $2.ps $2.pdf && rm $2.ps && echo "$2.pdf created"
elif [ $# == 1 ]; then		
	man -t $1 > $1.ps && ps2pdf $1.ps $1.pdf && rm $1.ps && echo "$1.pdf created"
else
	echo "Error: insert a command to convert"
fi