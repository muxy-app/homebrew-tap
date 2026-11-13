cask "muxy" do
  arch arm: "arm64", intel: "x86_64"

  version "2.5.0"
  sha256 arm:   "df63f184078d69274aeff8defb759ace5479b649f5318babc85bcbd05b5b1c96",
         intel: "b2353ea81ef3f8f546f755899a0563566ea3cd88cc4e11ad085cabe098023df9"

  url "https://github.com/muxy-app/muxy/releases/download/v#{version}/Muxy-#{version}-#{arch}.dmg"
  name "Muxy"
  desc "Terminal multiplexer"
  homepage "https://github.com/muxy-app/muxy"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Muxy.app"

  zap trash: [
    "~/Library/Application Support/Muxy 2",
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
