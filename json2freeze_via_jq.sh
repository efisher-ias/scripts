#!/bin/bash
jq -r ' . | to_entries | .[] | .key + "==" +.value.version' $1
