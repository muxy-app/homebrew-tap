cask "muxy" do
  arch arm: "arm64", intel: "x86_64"

  version "2.3.0"
  sha256 arm:   "123c4077797a0e7d2773d16cb9ee776c565d414981a213e733954b0cfc673d88",
         intel: "be9e4097d0a9830e4ebf3a4a28bbc9d4cd37cc11795fbddde5fdd8e989cd3a86"

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
