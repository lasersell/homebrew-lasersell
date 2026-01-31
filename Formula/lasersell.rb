class Lasersell < Formula
  desc "LaserSell CLI daemon for automated exits on Solana trades"
  homepage "https://lasersell.io"
  license "Proprietary"
  version "0.2.1"

  on_macos do
    on_arm do
      url "https://lasersell.github.io/apt/binaries/lasersell/0.2.1/lasersell_0.2.1_darwin_arm64.tar.gz"
      sha256 "fc381f481204af8387933b260581535a9c8ebaf665fb57a2d4767215874fd30e"
    end
    on_intel do
      url "https://lasersell.github.io/apt/binaries/lasersell/0.2.1/lasersell_0.2.1_darwin_amd64.tar.gz"
      sha256 "bc894c3e8101ef755117b5be02fd93b4beec5dd5df41fde96176f38629214d5b"
    end
  end

  on_linux do
    on_arm do
      url "https://lasersell.github.io/apt/binaries/lasersell/0.2.1/lasersell_0.2.1_linux_arm64.tar.gz"
      sha256 "2d574e1efd31fd5b5b2e23ad86a8c0936174f2d514eb1393ee2c00afd1954232"
    end
    on_intel do
      url "https://lasersell.github.io/apt/binaries/lasersell/0.2.1/lasersell_0.2.1_linux_amd64.tar.gz"
      sha256 "584342e289f5d14fdd9213edbfc6c405799949291f716a2beda81a8f715c1b24"
    end
  end

  def install
    bin.install "lasersell"
  end

  test do
    assert_match "lasersell #{version}", shell_output("#{bin}/lasersell --version")
  end

  livecheck do
    url "https://lasersell.github.io/apt/binaries/lasersell/latest.txt"
    regex(/(\d+\.\d+\.\d+)/)
  end
end
