cask "spotbar" do
  version "0.4.3"
  sha256 "6b4479e0bc30363613d6382a9deb3cc659195dbdca8ce6c3e4d9f619e596a4a9"

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
