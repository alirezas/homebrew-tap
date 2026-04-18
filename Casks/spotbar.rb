cask "spotbar" do
  version "0.4.1"
  sha256 "f375e3c326ce7ffbac887a38f847122a256e0b92a8753ad7c621776aee714fcc"

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
