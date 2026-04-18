cask "spotbar" do
  version "0.4.2"
  sha256 "315e5b85c6689e3cbdf109de46ace5d8e0634b6a751abf5dfe1fc85e787d0450"

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
