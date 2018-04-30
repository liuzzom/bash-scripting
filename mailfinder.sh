#!/bin/bash
if [ -n $1 ]
then
	awk '/[a-z]+\.[a-z]+@[a-z]+\.[a-z]+/' $1/[a-z]*[0-9].txt
else
	awk '/[a-z]+\.[a-z]+@[a-z]+\.[a-z]+/' ./[a-z]*[0-9].txt
fi