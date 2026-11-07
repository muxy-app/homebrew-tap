class MuxyCli < Formula
  desc "Terminal multiplexer: the muxy CLI, terminal UI, and server"
  homepage "https://github.com/muxy-app/muxy"
  version "2.4.0"
  license "Apache-2.0"

  on_macos do
    depends_on macos: :sonoma

    on_arm do
      url "https://github.com/muxy-app/muxy/releases/download/v2.4.0/muxy-2.4.0-macos-arm64.zip"
      sha256 "a3fe5600116ba04f03feb1aaec4f8926a531c8cfccd7ec612123cfb28157d694"
    end
    on_intel do
      url "https://github.com/muxy-app/muxy/releases/download/v2.4.0/muxy-2.4.0-macos-x86_64.zip"
      sha256 "4c465ef38a83aca8c3c4f1964c14a87f276cd78978f1e2653ef3af723165ba66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/muxy-app/muxy/releases/download/v2.4.0/muxy-2.4.0-linux-arm64.tar.gz"
      sha256 "44f4e37fb813ab0aba15065d5aa134baa57bd6a9604818e411479a0200d4d7f9"
    end
    on_intel do
      url "https://github.com/muxy-app/muxy/releases/download/v2.4.0/muxy-2.4.0-linux-x86_64.tar.gz"
      sha256 "db655b3f9f38e229dd4cb9027fc889b7ee9233c79779e62ddb0b904be83c850b"
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
