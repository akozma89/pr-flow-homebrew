cask "pr-flow" do
  version "1.6.2"
  sha256 arm:   "ef5432cec8329f7fbad7c0c183e022105716965787a7b8853d6ea7bf9d99d789",
         intel: "6813798b4318dd8c83fd75d4b9e6974f70dae06fd2eb4fc0178cff42ebf1e762"

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
