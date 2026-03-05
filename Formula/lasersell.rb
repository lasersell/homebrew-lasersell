class Lasersell < Formula
  desc "LaserSell: Solana trading client with exit intelligence for automated strategy execution"
  homepage "https://lasersell.io"
  license "MIT"
  version "0.4.5"

  on_macos do
    on_arm do
      url "https://dl.lasersell.io/binaries/lasersell/0.4.5/lasersell_0.4.5_darwin_arm64.tar.gz"
      sha256 "5bfc596fb3914c57a95f54156c7b606ac60ca2c00b6ff70f317ad57124198ef5"
    end
    on_intel do
      url "https://dl.lasersell.io/binaries/lasersell/0.4.5/lasersell_0.4.5_darwin_amd64.tar.gz"
      sha256 "4935c1bf44234a14719983a9a34c7212ffd38a76e5942194297c3f34f2b0a0cf"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.lasersell.io/binaries/lasersell/0.4.5/lasersell_0.4.5_linux_arm64.tar.gz"
      sha256 "f02903f29abe7587d63d3e9bd75b40e2a85c31a92ccfa841cc358dd35b23a859"
    end
    on_intel do
      url "https://dl.lasersell.io/binaries/lasersell/0.4.5/lasersell_0.4.5_linux_amd64.tar.gz"
      sha256 "c56fe229dc84a64b88fe7dca5961dfe0587ced5f41335108dfa1973ba4a3bd40"
    end
  end

  def install
    bin.install "lasersell"
  end

  test do
    assert_match "lasersell #{version}", shell_output("#{bin}/lasersell --version")
  end

  livecheck do
    url "https://dl.lasersell.io/binaries/lasersell/latest.txt"
    regex(/(\d+\.\d+\.\d+)/)
  end
end
