#!/bin/bash
set -e 

# create either csv or json from a directory of yaml files
# create-feed.sh csv | json 

TMPDIR=$(mktemp -d) || exit 1
ALLYAML="$TMPDIR/all.yml"
$(dirname $0)/combine-yaml.sh "$1" > $ALLYAML
cat $ALLYAML | dasel -r yaml -w ${2:csv}