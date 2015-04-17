#!/bin/bash
#
# Setup directory to handle nightly builds

source lessons.sh

mkdir ${NIGHTLY_DIR} && \
cd ${NIGHTLY_DIR} && \
for repo in ${SCF_REPOS}
do
    git clone ${repo}
done
