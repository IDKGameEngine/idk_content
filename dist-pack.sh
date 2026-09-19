#!/bin/bash
set -e

THIS_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

cd ${THIS_DIR}
tar -czvf dist/content.tar.gz -C src .

cd ${THIS_DIR}/dist
split -b 16M content.tar.gz content_
