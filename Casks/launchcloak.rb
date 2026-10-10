cask "launchcloak" do
  version "1.1.3"
  sha256 "69f2b2f067799c5e39b2c24913154b734391d705d56fd5b5b77d7f9986350202"

  url "https://github.com/a916791360/LaunchCloak/releases/download/v#{version}/LaunchCloak-v#{version}-macos.zip"
  name "LaunchCloak"
  desc "Lightweight menu bar utility to hide and restore Launchpad application icons"
  homepage "https://github.com/a916791360/LaunchCloak"

  depends_on macos: ">= :sonoma"

  app "LaunchCloak.app"

  zap trash: [
    "~/.hidden_apps.noindex",
    "~/Library/Preferences/com.qingmeng.launchcloak.plist",
  ]
end
