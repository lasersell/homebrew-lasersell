class Lasersell < Formula
  desc "LaserSell: Solana trading client with exit intelligence for automated strategy execution"
  homepage "https://lasersell.io"
  license "MIT"
  version "1.1.0"

  on_macos do
    on_arm do
      url "https://dl.lasersell.io/binaries/lasersell/1.1.0/lasersell_1.1.0_darwin_arm64.tar.gz"
      sha256 "067c798be0351dc755f1542ede8a86b6765cdc51bb258e503c6360813ebb2687"
    end
    on_intel do
      url "https://dl.lasersell.io/binaries/lasersell/1.1.0/lasersell_1.1.0_darwin_amd64.tar.gz"
      sha256 "c0e9efc9f28ff7643c3a8a983e6b0b88bf38009b8f0aa7bca4c8f63688765d4e"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.lasersell.io/binaries/lasersell/1.1.0/lasersell_1.1.0_linux_arm64.tar.gz"
      sha256 "e9ddc9fb737684986f90c3819eb40115aa1e37afc7cc5a844757b07af3bc1c28"
    end
    on_intel do
      url "https://dl.lasersell.io/binaries/lasersell/1.1.0/lasersell_1.1.0_linux_amd64.tar.gz"
      sha256 "43ce50ffcda5b0e6f50377c620f1ca7477be0fcd290f3cd8e073db7ef80a9175"
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
