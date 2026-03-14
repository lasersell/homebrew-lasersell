class Lasersell < Formula
  desc "LaserSell: Solana trading client with exit intelligence for automated strategy execution"
  homepage "https://lasersell.io"
  license "MIT"
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://dl.lasersell.io/binaries/lasersell/1.0.0/lasersell_1.0.0_darwin_arm64.tar.gz"
      sha256 "fe2f40ed3c5fb49493fdea7d91075f26981f87dbe7593ddf1da952c19f856d2a"
    end
    on_intel do
      url "https://dl.lasersell.io/binaries/lasersell/1.0.0/lasersell_1.0.0_darwin_amd64.tar.gz"
      sha256 "b8ceb21dabd62a5647307bb152586d98d454fc3119846018c3855862844c57b0"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.lasersell.io/binaries/lasersell/1.0.0/lasersell_1.0.0_linux_arm64.tar.gz"
      sha256 "70e7c474c8caa422be71e3161fa40e4277a31e5c192f1476b9de18c7e6ab5211"
    end
    on_intel do
      url "https://dl.lasersell.io/binaries/lasersell/1.0.0/lasersell_1.0.0_linux_amd64.tar.gz"
      sha256 "6b9be3a373327d5a8e94b3dfae42284d6940ec5807343112c842db863565caf9"
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
