cask "muxy" do
  arch arm: "arm64", intel: "x86_64"

  version "2.1.0"
  sha256 arm:   "bc4d8d6470b420c9441e87a60c36d16637349671c92ff5bca8a639714ba89be3",
         intel: "d7eaaa207233b665ae9bb300a776591db0cc1ca65607103096d49b625f6d4008"

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
