cask "muxy" do
  version "0.15.0"

  on_arm do
    sha256 "539e3f7b03b239abf9c2b9e37bb1e387dc641883db7212024a4b041e551ca2a2"
    url "https://github.com/muxy-app/muxy/releases/download/v#{version}/Muxy-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "76f98583c1e8dfa3861d4d473277d5b6c735e430eea13d73256af93631f8ce57"
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
