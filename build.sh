#!/bin/bash -e

SCRIPT_DIR=$(realpath $(dirname $0))

run() {
  docker run --rm -it \
    -v ${SCRIPT_DIR}:/workdir \
    -w /workdir/build \
    -v /etc/group:/etc/group:ro \
    -v /etc/passwd:/etc/passwd:ro \
    -u=$UID:$(id -g $USER) \
    -e USER="$USER" \
    medicineyeh/axiom-dev "$@"
}

mkdir -p build
# Use usr instead of usr/local for the formal package release (Important for package!)
run cmake .. -DCMAKE_INSTALL_PREFIX=/usr
run make -j$(nproc)
# Specify the root directory to be installed
run make install DESTDIR=./install
