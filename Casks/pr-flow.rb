cask "pr-flow" do
  version "1.5.8"
  sha256 arm:   "7bcd11406a1cb31adc995cfff70f35d44b4d494709e1ed31af367d46249460a9",
         intel: "4c2e1c91b0069eac7929a819d63df67bb8acba20cb3068fdc9d2b5e4ad49bdb3"

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
