#!/bin/bash
set -e

THIS_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

if [ ! -d "${THIS_DIR}/content" ]; then
    cd ${THIS_DIR}/dist
    cat content_* > content.tar.gz

    cd ${THIS_DIR}
    tar -xvf dist/content.tar.gz
fi
