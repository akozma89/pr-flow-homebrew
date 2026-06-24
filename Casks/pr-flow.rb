cask "pr-flow" do
  version "1.5.4"
  sha256 arm:   "10e795b8da9eeef2ed463ab5ec15e7b402e3a95e0bb5c3513f9b480dd92bd110",
         intel: "f1a86d1f891785e626cb18da43d49f8b70a904a0e0c76d4f2249f33913dc771d"

  on_arm do
    url "https://github.com/akozma89/pr-flow-releases/releases/download/v#{version}/PR-Flow-#{version}-arm64.dmg"
  end
  on_intel do
    url "https://github.com/akozma89/pr-flow-releases/releases/download/v#{version}/PR-Flow-#{version}.dmg"
  end

  name "PR Flow"
  desc "Menu-bar PR review assistant for GitHub & Gerrit"
  homepage "https://github.com/akozma89/pr-flow-releases"

  app "PR Flow.app"

  zap trash: [
    "~/Library/Application Support/PR Flow",
    "~/Library/Preferences/com.arpadkozma.prflow.plist",
    "~/Library/Logs/PR Flow",
  ]
end
