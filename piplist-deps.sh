#!/bin/bash
# requries:
#  pip install pip-module-scanner
#  pip install pipdeptree
#
# What for:
# Will scan python project folder for dependencies with pip-module-scanner 
# and build deppendencies tree for found in project modules with pipdeptree
#
# Output
# pip freeze-like list of modules

PROJECT_FOLDER = $1
for line in $( pip-module-scanner -p ${PROJECT_FOLDER} | awk '{split($1,a,"=="); print a[1];}' ); do  
  pipdeptree -p $line -w silence -f | awk '{ gsub(/^[ \t]+/,"",$1); print $1; }'; 
done
