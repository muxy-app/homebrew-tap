cask "muxy" do
  arch arm: "arm64", intel: "x86_64"

  version "2.2.0"
  sha256 arm:   "7a94dc92924961033c0a7a96979d1af62d80c38b828faf3d46e00e17e0b559e3",
         intel: "041f5db5048004ef1abeeb03e540c3b5e102340fe9eed11a986b4abbf67e2492"

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
