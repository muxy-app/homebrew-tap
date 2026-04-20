cask "muxy" do
  version "0.21.0"

  on_arm do
    sha256 "d1cda7700fc3b4a099b89f66b281d7d552922af0d3529983ca6274322a235a3f"
    url "https://github.com/muxy-app/muxy/releases/download/v#{version}/Muxy-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "8ad05ada4d1c6e17dfaff5c400715b84ac73fde740bd3eb4c0b98fcc8880fc09"
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
