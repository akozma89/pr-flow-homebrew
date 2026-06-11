cask "pr-flow" do
  version "1.3.0"
  sha256 arm:   "c2b906ff598c9aa8e0219e9cde4f4a17ab8775f367838aededcd7d2df9b2cc2a",
         intel: "e8704ac151174d9b8e81c10751fc20f154d7518b343386f59a3b86401d4b9e77"

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
