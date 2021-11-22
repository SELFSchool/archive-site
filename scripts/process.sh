#!/bin/bash
# Scan data for ymal files and combine them then transform to csv and json
# ./process.sh ../data

$(dirname $0)/libs/create-data.sh "$1" json > "${1}/index.json"
$(dirname $0)/libs/create-data.sh "$1" csv > "${1}/index.csv"

if [ -f "${1}/index.db" ]; then
  rm "${1}/index.db"
fi
sqlite-utils insert "${1}/index.db" data "${1}/index.json"