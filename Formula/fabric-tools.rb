# Copyright IBM Corp All Rights Reserved
#
# SPDX-License-Identifier: Apache-2.0
#
class FabricTools < Formula
  desc "Hyperledger Fabric native binaries installer"
  homepage "https://hyperledger.org/projects/fabric"
  url "https://nexus.hyperledger.org/content/repositories/releases/org/hyperledger/fabric/hyperledger-fabric/darwin-amd64-1.0.5/hyperledger-fabric-darwin-amd64-1.0.5.tar.gz"
  sha256 "aba6aef1eb04b7a8d7ff30219435d5f2c643728fa49306890cc5cf6c4ad3455a"

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
