cask "spotbar" do
  version "0.4.0"
  sha256 "d4ed20b777a5b10831a6bd36c1f2f9fe93d9c5093dc17d815e049d0d2d349b3e"

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
