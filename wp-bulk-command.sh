#!/usr/bin/env bash

FILE=$1
readarray -t LINES < "$FILE"

for LINE in "${LINES[@]}"; do
    eval "$LINE --allow-root"
done
