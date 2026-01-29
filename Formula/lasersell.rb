class Lasersell < Formula
  desc "LaserSell CLI daemon for automated exits on Solana trades"
  homepage "https://lasersell.io"
  license "Proprietary"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://dl.lasersell.io/binaries/lasersell/0.2.0/lasersell_0.2.0_darwin_arm64.tar.gz"
      sha256 "4ef0f82347ad399add768f6746c40af6477298466de7513b089ce23141d7af77"
    end
    on_intel do
      url "https://dl.lasersell.io/binaries/lasersell/0.2.0/lasersell_0.2.0_darwin_amd64.tar.gz"
      sha256 "6097157b547e9d55ddecd9a1ddc52aa13b9d64a35a64f6a2e5e66b8f5e3ae8b5"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.lasersell.io/binaries/lasersell/0.2.0/lasersell_0.2.0_linux_arm64.tar.gz"
      sha256 "7b8d8bd075fd719e4a066d506fe20b979b789b0ca71209a250334d8fec413326"
    end
    on_intel do
      url "https://dl.lasersell.io/binaries/lasersell/0.2.0/lasersell_0.2.0_linux_amd64.tar.gz"
      sha256 "88fff24daae54cf98fa77e485fbd0adb729a3e456722049a5d59acd110ea900a"
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
