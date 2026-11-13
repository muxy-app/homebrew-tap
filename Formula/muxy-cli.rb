class MuxyCli < Formula
  desc "Terminal multiplexer: the muxy CLI, terminal UI, and server"
  homepage "https://github.com/muxy-app/muxy"
  version "2.5.0"
  license "Apache-2.0"

  on_macos do
    depends_on macos: :sonoma

    on_arm do
      url "https://github.com/muxy-app/muxy/releases/download/v2.5.0/muxy-2.5.0-macos-arm64.zip"
      sha256 "b41a8d2e597c6f95c3665f3c5241dd6fdb3d09c68b5f58de1e519c4da2e1dd56"
    end
    on_intel do
      url "https://github.com/muxy-app/muxy/releases/download/v2.5.0/muxy-2.5.0-macos-x86_64.zip"
      sha256 "3f3cc7e7e050bb01016f659feb15c356dd2dc5dde00af26623a3006d2e5b19b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/muxy-app/muxy/releases/download/v2.5.0/muxy-2.5.0-linux-arm64.tar.gz"
      sha256 "ed9ef5d84469a168d16d8833375a3ff2d79f43080a4293014e1b19caa6175614"
    end
    on_intel do
      url "https://github.com/muxy-app/muxy/releases/download/v2.5.0/muxy-2.5.0-linux-x86_64.tar.gz"
      sha256 "2dc482c94bb4d7764e2589697502d4f8c8c08275a2b64bfa0418c3599cd8d0d2"
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
