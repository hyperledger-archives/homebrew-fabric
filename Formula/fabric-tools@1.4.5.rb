# Copyright IBM Corp All Rights Reserved
#
# SPDX-License-Identifier: Apache-2.0
#
class FabricToolsAT145 < Formula
  desc "Hyperledger Fabric native binaries installer"
  homepage "https://hyperledger.org/projects/fabric"
  url "https://github.com/hyperledger/fabric/releases/download/v1.4.5/hyperledger-fabric-darwin-amd64-1.4.5.tar.gz"
  sha256 "5af7674fd3971fd28d7cf00ecca756d80cd4fd61eea3c9ba50ac0605eb2f5c53"

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
