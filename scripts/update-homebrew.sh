#!/bin/bash
set -e
set -o pipefail

VERSION=${1:-1.4.4}
URL="https://github.com/hyperledger/fabric/releases/download/v${VERSION}/hyperledger-fabric-darwin-amd64-${VERSION}.tar.gz"
SHA=`curl -f -sSL ${URL} | shasum -a 256`
echo 'url "'${URL}'"'
echo 'sha256 "'${SHA:0:64}'"'
