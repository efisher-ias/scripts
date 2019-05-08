#!/bin/bash
awk '{ split($0,a,"=="); print "\"" a[1] "\": {\"version\": \"" a[2] "\", \"no_deps\": true}," ; } ' $1
