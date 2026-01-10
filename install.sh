#!/usr/bin/env bash

set -euo pipefail

[ -f ./build/xq ] || {
  mkdir -p ./build
  curl -sSL https://bit.ly/install-xq | INSTALL_DIR=./build bash
}

[ -f ./build/xarpite ] || {
  mkdir -p ./build/xarpite
  curl -L -o - 'https://repo1.maven.org/maven2/io/github/mirrgieriana/xarpite-bin/4.92.2/xarpite-bin-4.92.2-all.tar.gz' | \
    tar -xzf - -C ./build/xarpite
}
