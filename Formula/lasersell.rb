class Lasersell < Formula
  desc "LaserSell: Solana trading client with exit intelligence for automated strategy execution"
  homepage "https://lasersell.io"
  license "MIT"
  version "0.4.3"

  on_macos do
    on_arm do
      url "https://dl.lasersell.io/binaries/lasersell/0.4.3/lasersell_0.4.3_darwin_arm64.tar.gz"
      sha256 "e9fbe47db22ac83a39e4451f0e82f2dfd6d5a04b7396ebddd8e6e1fd4a295c29"
    end
    on_intel do
      url "https://dl.lasersell.io/binaries/lasersell/0.4.3/lasersell_0.4.3_darwin_amd64.tar.gz"
      sha256 "d9623bd4855d0361fbe409d4e4191da2a8eb3dad6485c8ff5413c98a34f0db12"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.lasersell.io/binaries/lasersell/0.4.3/lasersell_0.4.3_linux_arm64.tar.gz"
      sha256 "8180254b75f3b0f7a1611db267c63a3fb78f55110641e1f733badf5c71d6cc64"
    end
    on_intel do
      url "https://dl.lasersell.io/binaries/lasersell/0.4.3/lasersell_0.4.3_linux_amd64.tar.gz"
      sha256 "c5d6c080b661eb296cc5c1e4fd73ba8fc22f3395dfa858bdfdd05be1e76a59fb"
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
