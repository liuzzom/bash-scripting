#!/bin/bash
mv $(ls -l | awk '$1 ~ /^[-l]/ && $NF ~ /a[0-9]+$/ {printf "%s\n", $NF}') dirA
mv $(ls -l | awk '$1 ~ /^[-l]/ && $NF ~ /b[0-9]+$/ {printf "%s\n", $NF}') dirB