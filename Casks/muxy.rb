cask "muxy" do
  version "0.17.0"

  on_arm do
    sha256 "5b7c7b30c54e3d322b852250cbfe06fb5fc39425311ce4cc3f00ece85dda2890"
    url "https://github.com/muxy-app/muxy/releases/download/v#{version}/Muxy-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "8c0c20b9e2938ca7c364aa8ef220c6aef8a4cfb6f25fbe272a9dbba3c2d9739d"
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
