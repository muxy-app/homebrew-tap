class MuxyCli < Formula
  desc "Terminal multiplexer: the muxy CLI, terminal UI, and server"
  homepage "https://github.com/muxy-app/muxy"
  version "2.2.0"
  license "MIT"

  on_macos do
    depends_on macos: :sonoma

    on_arm do
      url "https://github.com/muxy-app/muxy/releases/download/v2.2.0/muxy-2.2.0-macos-arm64.zip"
      sha256 "8d76e7bb0071d2b09733e2dac9796f3a8256b666187d0f0b91546c263356812b"
    end
    on_intel do
      url "https://github.com/muxy-app/muxy/releases/download/v2.2.0/muxy-2.2.0-macos-x86_64.zip"
      sha256 "1f58b47b89de17c8eb595d271dbe1681a918a7c1da20d3f7ca99202a64e8faac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/muxy-app/muxy/releases/download/v2.2.0/muxy-2.2.0-linux-arm64.tar.gz"
      sha256 "f9e2b514a3f116ba5055708ca970466fe9ff855e050e74fb9cb765954995dd91"
    end
    on_intel do
      url "https://github.com/muxy-app/muxy/releases/download/v2.2.0/muxy-2.2.0-linux-x86_64.tar.gz"
      sha256 "8a84b48be4ca2e223120d5aab8e7071cf46286be2108d31dd86bf05f0e4de52c"
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
