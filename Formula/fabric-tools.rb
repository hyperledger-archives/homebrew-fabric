# Copyright IBM Corp All Rights Reserved
#
# SPDX-License-Identifier: Apache-2.0
#
class FabricTools < Formula
  desc "Hyperledger Fabric native binaries installer"
  homepage "https://hyperledger.org/projects/fabric"
  url "https://nexus.hyperledger.org/content/repositories/releases/org/hyperledger/fabric/hyperledger-fabric/darwin-amd64-1.0.2/hyperledger-fabric-darwin-amd64-1.0.2.tar.gz"
  sha256 "b0ef8362cacca4d0a83be761fdec379236d32bc38e1cadfec8aeab312f342deb"

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
