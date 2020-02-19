# Copyright IBM Corp All Rights Reserved
#
# SPDX-License-Identifier: Apache-2.0
#
class FabricToolsAT200 < Formula
  desc "Hyperledger Fabric native binaries installer"
  homepage "https://hyperledger.org/projects/fabric"
  url "https://github.com/hyperledger/fabric/releases/download/v2.0.1/hyperledger-fabric-darwin-amd64-2.0.1.tar.gz"
  sha256 "c94ccd31ac9374b09ab14fb907ab14962216be9f9fa542c1774770ae519b3550"

  def install
    bin.install "bin/cryptogen"
    bin.install "bin/configtxgen"
    bin.install "bin/configtxlator"
  end

  test do
    system "#{bin}/configtxgen --help"
    system "#{bin}/configtxlator --help"
    system "#{bin}/cryptogen --help"
  end
end
