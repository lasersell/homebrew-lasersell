class Lasersell < Formula
  desc "LaserSell: Solana trading client with exit intelligence for automated strategy execution"
  homepage "https://lasersell.io"
  license "MIT"
  version "0.4.6"

  on_macos do
    on_arm do
      url "https://dl.lasersell.io/binaries/lasersell/0.4.6/lasersell_0.4.6_darwin_arm64.tar.gz"
      sha256 "449b5cba9eece9cefd2e43cabc45eb8a3820d47c6fcd5e9191d08b0cdd11569d"
    end
    on_intel do
      url "https://dl.lasersell.io/binaries/lasersell/0.4.6/lasersell_0.4.6_darwin_amd64.tar.gz"
      sha256 "1b630ccf857ad556d2fc5503ff165b367c3929c4e6cc761963cd8b0369ea81fb"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.lasersell.io/binaries/lasersell/0.4.6/lasersell_0.4.6_linux_arm64.tar.gz"
      sha256 "a92af8c6cb2e69ad20fc2d9cef7e1fa47c465a4bcb105c34aba8d873f209a565"
    end
    on_intel do
      url "https://dl.lasersell.io/binaries/lasersell/0.4.6/lasersell_0.4.6_linux_amd64.tar.gz"
      sha256 "d7e49bc893d5417efd0a53516c3782262b428cb18cb85dbda592c33b37f11a73"
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
