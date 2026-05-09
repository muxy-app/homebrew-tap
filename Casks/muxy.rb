cask "muxy" do
  version "0.27.0"

  on_arm do
    sha256 "19f976f959152bb2af8b1454874d69db9e06279a17f4021564c6b7c6f34e6889"
    url "https://github.com/muxy-app/muxy/releases/download/v#{version}/Muxy-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "35c13b66bfe9e9b8900c559f71201ee65f6b1a747ea36e9160a0620d91109b73"
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
    "~/Library/Preferences/app.muxy.Muxy.plist",
    "~/Library/Saved Application State/app.muxy.Muxy.savedState",
  ]
end
