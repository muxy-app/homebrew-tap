class MuxyCli < Formula
  desc "Terminal multiplexer: the muxy CLI, terminal UI, and server"
  homepage "https://github.com/muxy-app/muxy"
  version "2.1.0"
  license "MIT"

  on_macos do
    depends_on macos: :sonoma

    on_arm do
      url "https://github.com/muxy-app/muxy/releases/download/v2.1.0/muxy-2.1.0-macos-arm64.zip"
      sha256 "c5fa0f8a1a79561764faa1ca02ead15f24c3b07d648daff23710882b3acc3e72"
    end
    on_intel do
      url "https://github.com/muxy-app/muxy/releases/download/v2.1.0/muxy-2.1.0-macos-x86_64.zip"
      sha256 "1a269d7376eb2141d1ba0693ee419ec9ef5d0d6b3c7771974b3d3223f6db4bad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/muxy-app/muxy/releases/download/v2.1.0/muxy-2.1.0-linux-arm64.tar.gz"
      sha256 "79deafdbd669990627ad148f0c7d42416493b0987b5946d9c6573ce45c62722b"
    end
    on_intel do
      url "https://github.com/muxy-app/muxy/releases/download/v2.1.0/muxy-2.1.0-linux-x86_64.tar.gz"
      sha256 "83059b587e7e85bd50ac49a6e1835d1752c489ba5fef710dc889985151765092"
    end
  end

  def install
    bin.install "muxy", "muxy-server"
  end

  test do
    assert_match "\"version\":\"#{version}\"", shell_output("#{bin}/muxy --build-info")
    assert_match "\"version\":\"#{version}\"", shell_output("#{bin}/muxy-server --build-info")
  end
end
