# Copyright IBM Corp All Rights Reserved
#
# SPDX-License-Identifier: Apache-2.0
#
class FabricToolsAT200 < Formula
  desc "Hyperledger Fabric native binaries installer"
  homepage "https://hyperledger.org/projects/fabric"
  url "https://github.com/hyperledger/fabric/releases/download/v2.0.0/hyperledger-fabric-darwin-amd64-2.0.0.tar.gz"
  sha256 "f78f1a038ba59dcc43e6d1d812a340fe5c77eef09ec49000cbedc502ec0e3f81"

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
