#!/bin/bash
# Scan data for ymal files and combine them then transform to csv and json
# ./process.sh ../data

./libs/create-data.sh "$1" json > "${1}/index.json"
./libs/create-data.sh "$1" csv > "${1}/index.csv"

rm "${1}/index.db"
sqlite-utils insert "${1}/index.db" data "${1}/index.json"