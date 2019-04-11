#!/bin/bash
PROJECT_FOLDER = $1
for line in $( pip-module-scanner -p $PROJECT_FOLDER | awk '{split($1,a,"=="); print a[1];}' ); do  
  pipdeptree -p $line -w silence -f | awk '{ gsub(/^[ \t]+/,"",$1); print $1; }'; 
done
