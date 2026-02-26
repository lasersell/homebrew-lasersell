class Lasersell < Formula
  desc "LaserSell: Solana trading client with exit intelligence for automated strategy execution"
  homepage "https://lasersell.io"
  license "MIT"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://dl.lasersell.io/binaries/lasersell/0.4.0/lasersell_0.4.0_darwin_arm64.tar.gz"
      sha256 "67fbcdad2396f3ea164c1ea2c1ccf1132eb848953f120b61760689f5255de21a"
    end
    on_intel do
      url "https://dl.lasersell.io/binaries/lasersell/0.4.0/lasersell_0.4.0_darwin_amd64.tar.gz"
      sha256 "97533f0e265de8aa84582f521573b13fdae5758773f48897b2ccf1c75722b7b6"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.lasersell.io/binaries/lasersell/0.4.0/lasersell_0.4.0_linux_arm64.tar.gz"
      sha256 "ecf6be8702826bfa1a422a1174e97c603ee3ca65db88e92b3eacb73d76f1c8d4"
    end
    on_intel do
      url "https://dl.lasersell.io/binaries/lasersell/0.4.0/lasersell_0.4.0_linux_amd64.tar.gz"
      sha256 "c3f82e8ca3617cf1fa6d9273a4d2c0264bf41218faf7aa2733aa2d5701e86101"
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
