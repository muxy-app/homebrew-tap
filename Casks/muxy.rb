cask "muxy" do
  version "1.5.0"

  on_arm do
    sha256 "fa6c591131c6c1d798e1c235c8ddc69c1607db67a32db514e79bcb7fa280f664"
    url "https://github.com/muxy-app/muxy/releases/download/v#{version}/Muxy-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "7a70221e4d458c3e7ba587e4036015ed335ca70d42888ccb7d995097322ee81f"
    url "https://github.com/muxy-app/muxy/releases/download/v#{version}/Muxy-#{version}-x86_64.dmg"
  end

  name "Muxy"
  desc "Terminal multiplexer for macOS"
  homepage "https://github.com/muxy-app/muxy"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Muxy.app"

  zap trash: [
    "~/Library/Application Support/Muxy",
    "~/Library/Caches/com.muxy.app",
    "~/Library/HTTPStorages/com.muxy.app",
    "~/Library/HTTPStorages/com.muxy.app.binarycookies",
    "~/Library/Logs/Muxy",
    "~/Library/Preferences/com.muxy.app.plist",
    "~/Library/Saved Application State/com.muxy.app.savedState",
    "~/Library/WebKit/com.muxy.app",
  ]
end
