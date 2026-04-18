cask "spotbar" do
  version "0.4.4"
  sha256 "89adad81c45a623cd9514e8158f9a50ec5c2741a6fd8c698a36c0ee514dbb793"

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
