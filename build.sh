#!/bin/bash
#
# Build the lessons

source lessons.sh

for lesson in $(find ${NIGHTLY_DIR} -mindepth 1 -maxdepth 1 -type d)
do
    cd ${lesson}
    git checkout -f gh-pages
    git pull origin gh-pages
    make check > ../$(basename ${lesson}).status
    make -B preview
    cd -
done
