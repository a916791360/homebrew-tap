cask "launchcloak" do
  version "1.1.1"
  sha256 "0dbf74c93c4e4fc22e7c44bfad8b77f26e1a401abc6e99ba937613c6c957eea9"

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
