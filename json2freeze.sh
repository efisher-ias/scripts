#!/bin/bash

awk '{ gsub(/[:|"|,]/,"",$0); split($0,a," "); print a[1]"=="a[3]; }' $1
