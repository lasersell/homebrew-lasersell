class Lasersell < Formula
  desc "LaserSell CLI daemon for automated exits on Solana trades"
  homepage "https://lasersell.io"
  license "Proprietary"
  version "0.2.2"

  on_macos do
    on_arm do
      url "https://lasersell.github.io/apt/binaries/lasersell/0.2.2/lasersell_0.2.2_darwin_arm64.tar.gz"
      sha256 "a90e5aae36f97722ce1ec4b506ecfc6dc2aa96010e2a6bc7066e2826f41a9736"
    end
    on_intel do
      url "https://lasersell.github.io/apt/binaries/lasersell/0.2.2/lasersell_0.2.2_darwin_amd64.tar.gz"
      sha256 "afaf0331dfbd686b95bbf43cf5597fcf89dc89ebfd40b34bd6232c6be86fb7a9"
    end
  end

  on_linux do
    on_arm do
      url "https://lasersell.github.io/apt/binaries/lasersell/0.2.2/lasersell_0.2.2_linux_arm64.tar.gz"
      sha256 "b84e396a2a197c7c39d96cb0fcf89b8a50a70416c6335cdca73ef874f7e3dfd1"
    end
    on_intel do
      url "https://lasersell.github.io/apt/binaries/lasersell/0.2.2/lasersell_0.2.2_linux_amd64.tar.gz"
      sha256 "fd24a9b316db7541ce31ed3d04a0ceffc9d889ea8da4b254f7b217a70ee96e8a"
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
