cask "spotbar" do
  version "0.4.1"
  sha256 "c9ec7e3bef069d0c0f1d21d1cb6f6201b81453e2f36a3b35d4d256fe1938b7e0"

  url "https://github.com/alirezas/spotbar/releases/download/v#{version}/SpotBar-#{version}.zip"
  name "SpotBar"
  desc "Menu bar app showing currently playing music"
  homepage "https://github.com/alirezas/spotbar"

  depends_on macos: ">= :ventura"

  app "SpotBar.app"

  zap trash: [
    "~/Library/Preferences/com.dot.spotbar.plist",
  ]
end
