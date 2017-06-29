# Copyright IBM Corp All Rights Reserved
#
# SPDX-License-Identifier: Apache-2.0
#
class FabricTools < Formula
  desc "Hyperledger Fabric native binaries installer"
  homepage "https://hyperledger.org/projects/fabric"
  url "https://nexus.hyperledger.org/content/repositories/releases/org/hyperledger/fabric/hyperledger-fabric/darwin-amd64-1.0.0/hyperledger-fabric-darwin-amd64-1.0.0.tar.gz"
  sha256 "8b03d1e7d4dd287355a7d5021434e2ffab76c90b8359c8fe3f7f11bcae9d2dba"

  def install
    bin.install "cryptogen"
    bin.install "configtxgen"
    bin.install "configtxlator"
  end

  test do
    system "#{bin}/configtxgen --help"
    system "#{bin}/configtxlator --help"
    system "#{bin}/cryptogen --help"
  end
end
