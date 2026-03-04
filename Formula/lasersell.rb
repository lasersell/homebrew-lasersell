class Lasersell < Formula
  desc "LaserSell: Solana trading client with exit intelligence for automated strategy execution"
  homepage "https://lasersell.io"
  license "MIT"
  version "0.4.4"

  on_macos do
    on_arm do
      url "https://dl.lasersell.io/binaries/lasersell/0.4.4/lasersell_0.4.4_darwin_arm64.tar.gz"
      sha256 "aaa8220dcf357b7ec7c084f05d2893b17d15d5a0a541e8153e38c3c8fd949836"
    end
    on_intel do
      url "https://dl.lasersell.io/binaries/lasersell/0.4.4/lasersell_0.4.4_darwin_amd64.tar.gz"
      sha256 "fbab15d24fb15c32057dd99dc30264e46ce1927141642c42d737bbe03ad8884c"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.lasersell.io/binaries/lasersell/0.4.4/lasersell_0.4.4_linux_arm64.tar.gz"
      sha256 "821075a31dcad1f71c96605147aec96b87c6a2f8bbbf9c641b84a325bb20213c"
    end
    on_intel do
      url "https://dl.lasersell.io/binaries/lasersell/0.4.4/lasersell_0.4.4_linux_amd64.tar.gz"
      sha256 "3e119548b7047ae28d945398a5c0dc7b360f7b067f61203febf9d20b6d420186"
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
