cask "launchcloak" do
  version "1.1.2"
  sha256 "52f6657f7b2e862bdf7138aafabecffcee8f31e9131f5befec4a1ba3852f0957"

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
