#!/bin/bash
#
# Build the lessons

source lessons.sh

find ${NIGHTLY_DIR} \
    -mindepth 1 \
    -maxdepth 1 \
    -type d \
    -exec make -C {} -B preview \;
