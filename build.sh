#!/bin/bash
#
# Build the lessons

source lessons.sh

for lesson in $(find ${NIGHTLY_DIR} -mindepth 1 -maxdepth 1 -type d)
do
    cd ${lesson}
    git pull origin gh-pages
    make -B preview
    cd -
done
