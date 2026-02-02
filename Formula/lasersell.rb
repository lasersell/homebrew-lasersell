class Lasersell < Formula
  desc "LaserSell CLI daemon for automated exits on Solana trades"
  homepage "https://lasersell.io"
  license "Proprietary"
  version "0.2.2"

  on_macos do
    on_arm do
      url "https://lasersell.github.io/apt/binaries/lasersell/0.2.2/lasersell_0.2.2_darwin_arm64.tar.gz"
      sha256 "b05c51ac30cba9378038ef153c1af88a7e1bd18ccc372eb56e8ad7573584c3ca"
    end
    on_intel do
      url "https://lasersell.github.io/apt/binaries/lasersell/0.2.2/lasersell_0.2.2_darwin_amd64.tar.gz"
      sha256 "5b42aaca0e24448738ee84f7eb10950264d5992ac81e5e1e855829fb3d5d9b9b"
    end
  end

  on_linux do
    on_arm do
      url "https://lasersell.github.io/apt/binaries/lasersell/0.2.2/lasersell_0.2.2_linux_arm64.tar.gz"
      sha256 "f86bdf77bb5288de8f0449a5aa522c2adaa6dea9d71e82480cc774fb521330dd"
    end
    on_intel do
      url "https://lasersell.github.io/apt/binaries/lasersell/0.2.2/lasersell_0.2.2_linux_amd64.tar.gz"
      sha256 "da1fb91a52725f5ac21797a86bf2746068ee32a7e166e847e221699696daca69"
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
