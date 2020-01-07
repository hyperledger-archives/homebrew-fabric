# Copyright IBM Corp All Rights Reserved
#
# SPDX-License-Identifier: Apache-2.0
#
class FabricToolsAT121 < Formula
  desc "Hyperledger Fabric native binaries installer"
  homepage "https://hyperledger.org/projects/fabric"
  url "https://github.com/hyperledger/fabric/releases/download/v1.2.1/hyperledger-fabric-darwin-amd64-1.2.1.tar.gz"
  sha256 "eabec11a3d6b2110d5fa583641f44111b218caa0b02809983d616c04c07c75e9"

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
