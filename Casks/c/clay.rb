cask "clay" do
  version "2.18.14"
  sha256 "b5e883b9e064fefef2f57280008537241468782fd8e6a6c7c90634866f8d1d31"

  url "https://assets.clay.earth/desktop/mac/Clay-#{version}-universal.dmg"
  name "Clay"
  desc "Private rolodex to remember people better"
  homepage "https://clay.earth/"

  livecheck do
    url "https://assets.clay.earth/desktop/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Clay.app"

  zap trash: [
    "~/Library/Application Support/Clay",
    "~/Library/Logs/Clay",
    "~/Library/Preferences/com.clay.mac.plist",
    "~/Library/Saved Application State/com.clay.mac.savedState",
  ]
end
