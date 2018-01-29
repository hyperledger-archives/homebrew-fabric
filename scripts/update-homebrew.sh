#!/bin/bash
set -e

VERSION=${1:-1.0.5}
URL="https://nexus.hyperledger.org/content/repositories/releases/org/hyperledger/fabric/hyperledger-fabric/darwin-amd64-${VERSION}/hyperledger-fabric-darwin-amd64-${VERSION}.tar.gz"
SHA=`curl -sSL https://nexus.hyperledger.org/content/repositories/releases/org/hyperledger/fabric/hyperledger-fabric/darwin-amd64-${VERSION}/hyperledger-fabric-darwin-amd64-${VERSION}.tar.gz | shasum -a 256`
echo 'url "'${URL}'"'
echo 'sha256 "'${SHA:0:64}'"'
