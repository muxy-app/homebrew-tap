class MuxyCli < Formula
  desc "Terminal multiplexer: the muxy CLI, terminal UI, and server"
  homepage "https://github.com/muxy-app/muxy"
  version "2.0.0"
  license "MIT"

  on_macos do
    depends_on macos: :sonoma

    on_arm do
      url "https://github.com/muxy-app/muxy/releases/download/v2.0.0/muxy-2.0.0-macos-arm64.zip"
      sha256 "3fe7200f2c8d113e02ea8bb10f0070f61da6b1e4795052215ed25cc37f79289c"
    end
    on_intel do
      url "https://github.com/muxy-app/muxy/releases/download/v2.0.0/muxy-2.0.0-macos-x86_64.zip"
      sha256 "0f7f27fb82eee16eb05584178b337191c04b7cb8358e5374be1d36d5a3734ff1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/muxy-app/muxy/releases/download/v2.0.0/muxy-2.0.0-linux-arm64.tar.gz"
      sha256 "9fb84eae3752b690350ba550686d90c80e92ade3bb000d1db6ac12f8d625b2ce"
    end
    on_intel do
      url "https://github.com/muxy-app/muxy/releases/download/v2.0.0/muxy-2.0.0-linux-x86_64.tar.gz"
      sha256 "05f617d73444961d232a94093fa5328891e98e475dff4af9eb59f35dcc878a1e"
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
