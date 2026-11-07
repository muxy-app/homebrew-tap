cask "muxy" do
  arch arm: "arm64", intel: "x86_64"

  version "2.4.0"
  sha256 arm:   "fccc1e0cfadda1b9bbf2bd3c3182c65c3da170b3fb57fd2ff6554f52e9902c5f",
         intel: "61931d4fa4415c56bdc7988635568e1536dc02da9faaddd45850f3156ef1c82e"

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
