cask "muxy" do
  version "0.23.2"

  on_arm do
    sha256 "4ed62b772defabb4990d585b26407cbb3ef001a8942a4c7866da6be6ffc85218"
    url "https://github.com/muxy-app/muxy/releases/download/v#{version}/Muxy-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "74ac9a2d52e4b88baf824911043bfa2fc47d2e73b89a92eef0d928f14fb27dbf"
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
