cask "launchcloak" do
  version "1.1.2"
  sha256 "56a61f2f722799444252cc7337004bc480627ee1382268d742159e31aea873aa"

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
