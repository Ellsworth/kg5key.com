#!/usr/bin/env bash
main() {
    ZOLA_VERSION=0.22.1

    curl -sLJO "https://github.com/getzola/zola/releases/download/v${ZOLA_VERSION}/zola-v${ZOLA_VERSION}-x86_64-unknown-linux-gnu.tar.gz"
    tar -xf zola-v${ZOLA_VERSION}-x86_64-unknown-linux-gnu.tar.gz

    git submodule update --init --recursive

    ./zola build
}

set -euo pipefail
