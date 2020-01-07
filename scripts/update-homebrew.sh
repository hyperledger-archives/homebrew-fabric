#!/bin/bash
set -e

VERSION=${1:-1.4.4}
URL="https://github.com/hyperledger/fabric/releases/download/v${VERSION}/hyperledger-fabric-darwin-amd64-${VERSION}.tar.gz"
SHA=`curl -sSL ${URL} | shasum -a 256`
echo 'url "'${URL}'"'
echo 'sha256 "'${SHA:0:64}'"'
