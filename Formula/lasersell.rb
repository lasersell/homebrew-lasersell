class Lasersell < Formula
  desc "LaserSell: Solana trading client with exit intelligence for automated strategy execution"
  homepage "https://lasersell.io"
  license "MIT"
  version "0.4.2"

  on_macos do
    on_arm do
      url "https://dl.lasersell.io/binaries/lasersell/0.4.2/lasersell_0.4.2_darwin_arm64.tar.gz"
      sha256 "00102a926247f5532cef7a4eebf66b831574f43e10a751efea94396bebb9c9c6"
    end
    on_intel do
      url "https://dl.lasersell.io/binaries/lasersell/0.4.2/lasersell_0.4.2_darwin_amd64.tar.gz"
      sha256 "bff4beae59134983640146f91670cb9052c9f1d98f381dd625e47e50597ef04a"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.lasersell.io/binaries/lasersell/0.4.2/lasersell_0.4.2_linux_arm64.tar.gz"
      sha256 "cce9c44c35af0768fda61a9aa933ac8dcfc57414738f98eccf16e10811ef8829"
    end
    on_intel do
      url "https://dl.lasersell.io/binaries/lasersell/0.4.2/lasersell_0.4.2_linux_amd64.tar.gz"
      sha256 "4d3fad54931494ede4bf0e74084981a74541d37f11d0826d50f110c4b52faf3b"
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
