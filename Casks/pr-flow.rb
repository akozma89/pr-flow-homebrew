cask "pr-flow" do
  version "1.11.1"
  sha256 "2e3a30eefe2756d4b5a6962e53e48c0bd0236716f62d039e3a2c601c5a62ce4f"

  url "https://github.com/akozma89/pr-flow-releases/releases/download/v#{version}/PR-Flow-#{version}-universal.dmg"

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
