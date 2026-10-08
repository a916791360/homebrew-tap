cask "launchcloak" do
  version "1.1.0"
  sha256 "2cd3512de8a0d62c8328f9fda0c7e33c90dd10071f094b689959b4fd739897da"

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
