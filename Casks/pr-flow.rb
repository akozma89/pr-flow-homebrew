cask "pr-flow" do
  version "1.0.7"
  sha256 arm:   "63832f2bbd15caac4961410013fb5bf836e5a27568d52dd6aaec597ee2e40a4e",
         intel: "2d5e348b0b999b2365e5fb9477f5fbb2af8c24a4ca77033709d536cffd1ff64e"

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
