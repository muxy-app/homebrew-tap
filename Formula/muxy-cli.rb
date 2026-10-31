class MuxyCli < Formula
  desc "Terminal multiplexer: the muxy CLI, terminal UI, and server"
  homepage "https://github.com/muxy-app/muxy"
  version "2.3.0"
  license "MIT"

  on_macos do
    depends_on macos: :sonoma

    on_arm do
      url "https://github.com/muxy-app/muxy/releases/download/v2.3.0/muxy-2.3.0-macos-arm64.zip"
      sha256 "558843073567d989c51a60df46d9f6ec008f682b060c1029c86503aedb9458be"
    end
    on_intel do
      url "https://github.com/muxy-app/muxy/releases/download/v2.3.0/muxy-2.3.0-macos-x86_64.zip"
      sha256 "5d36c555541104ad76a0ae2c105412f69905bcc9b9639c93f9aaf303c7e94757"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/muxy-app/muxy/releases/download/v2.3.0/muxy-2.3.0-linux-arm64.tar.gz"
      sha256 "970b26ed926fa84c7f0c942b2ce492d5e6a30778e2c3f55f29b8a13b9f964627"
    end
    on_intel do
      url "https://github.com/muxy-app/muxy/releases/download/v2.3.0/muxy-2.3.0-linux-x86_64.tar.gz"
      sha256 "12c7ed5d318fcdb6cd7fe6897ac6c9196bd0f7f1afbed25e31b68a18356038e5"
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
