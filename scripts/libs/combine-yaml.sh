#!/bin/bash
# recursively combine all yaml files from a directory
for i in $(find "$1" -type f -name "*.yml")
do
    echo "-"
    while read line
    do
      echo "  "$line;
    done < "$i"
done