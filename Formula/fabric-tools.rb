# Copyright IBM Corp All Rights Reserved
#
# SPDX-License-Identifier: Apache-2.0
#
class FabricTools < Formula
  desc "Hyperledger Fabric native binaries installer"
  homepage "https://hyperledger.org/projects/fabric"
  # TODO pick URL where the MacOSX binaries tarball will be hosted
  url "https://nexus.hyperledger.org/content/repositories/releases/org/hyperledger/fabric/hyperledger-fabric/darwin-amd64-1.0.0-rc1/hyperledger-fabric-darwin-amd64-1.0.0-rc1.tar.gz"
  sha256 "03f4e9a9ce42c1165376fd0077fe56f76f164f8fb9a51024da46ffad6c42c3d4"

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
