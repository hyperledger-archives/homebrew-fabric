# Copyright IBM Corp All Rights Reserved
#
# SPDX-License-Identifier: Apache-2.0
#

class FabricToolsAT210 < Formula
  desc "Hyperledger Fabric native binaries installer"
  homepage "https://hyperledger.org/projects/fabric"
  url "https://github.com/hyperledger/fabric/releases/download/v2.1.1/hyperledger-fabric-darwin-amd64-2.1.1.tar.gz"
  sha256 "d1ee4a86bee27ddb97ca23054e1737ad90fff3db44155f336417876dccb198da"

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
