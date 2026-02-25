class Lasersell < Formula
  desc "LaserSell: Solana trading client with exit intelligence for automated strategy execution"
  homepage "https://lasersell.io"
  license "MIT"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://dl.lasersell.io/binaries/lasersell/0.3.0/lasersell_0.3.0_darwin_arm64.tar.gz"
      sha256 "e55b0f9e580d6c796ffc4c6584675dd624aedaf43e0b78d58f0643b3dea93d78"
    end
    on_intel do
      url "https://dl.lasersell.io/binaries/lasersell/0.3.0/lasersell_0.3.0_darwin_amd64.tar.gz"
      sha256 "cba756a393ff7912153b9bc314e9a970ef90de164826db92677767cf0d6a859a"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.lasersell.io/binaries/lasersell/0.3.0/lasersell_0.3.0_linux_arm64.tar.gz"
      sha256 "1150d9d401b820dc87dbc17f54c0917d18aa707c16221693c5d18777fd4788fe"
    end
    on_intel do
      url "https://dl.lasersell.io/binaries/lasersell/0.3.0/lasersell_0.3.0_linux_amd64.tar.gz"
      sha256 "29c28a4e7be73c5d72d5899b3075e20ba204c5fafe405c2e2bb3d2923e52aa2a"
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
