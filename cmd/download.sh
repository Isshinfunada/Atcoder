#! /bin/bash

dir=$(cat ./contest)
WORKING_DIR="/go/src"
PROBLEM_DIR="${WORKING_DIR}/${dir}"
TEMPLATE="${WORKING_DIR}/templates/main.go"

cd $WORKING_DIR

acc new $dir

PROBLEMS="${PROBLEM_DIR}/*"
for DIRPATH in $PROBLEMS; do
    if [ ! -d $DIRPATH ]; then
	continue
    fi

    cp -n $TEMPLATE "${DIRPATH}/main.go"
done