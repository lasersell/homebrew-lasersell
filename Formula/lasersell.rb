class Lasersell < Formula
  desc "LaserSell: Solana trading client with exit intelligence for automated strategy execution"
  homepage "https://lasersell.io"
  license "MIT"
  version "0.4.1"

  on_macos do
    on_arm do
      url "https://dl.lasersell.io/binaries/lasersell/0.4.1/lasersell_0.4.1_darwin_arm64.tar.gz"
      sha256 "976c0ae6cb82691d78fed9ccaf1607fd67f239a44db260a98748a5edacc30f8c"
    end
    on_intel do
      url "https://dl.lasersell.io/binaries/lasersell/0.4.1/lasersell_0.4.1_darwin_amd64.tar.gz"
      sha256 "f374cfcaf8420e3a5a75702292a999247237335d9f22f6e55e1bc52b9d7f3c59"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.lasersell.io/binaries/lasersell/0.4.1/lasersell_0.4.1_linux_arm64.tar.gz"
      sha256 "7a22afeeac1c142983ecbccaf298e49016e5878eda9f167b42b0db74e53bf014"
    end
    on_intel do
      url "https://dl.lasersell.io/binaries/lasersell/0.4.1/lasersell_0.4.1_linux_amd64.tar.gz"
      sha256 "7ad27115f3bc7230351e9e1041e5990f550bbdbef78d7e7cafe0f15a1ac2ed1c"
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
