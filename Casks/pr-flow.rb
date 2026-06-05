cask "pr-flow" do
  version "1.0.0"
  sha256 arm:   :no_check,
         intel: :no_check

  on_arm do
    url "https://github.com/akozma89/pr-flow-releases/releases/download/v#{version}/PR.Flow-#{version}-arm64.dmg"
  end
  on_intel do
    url "https://github.com/akozma89/pr-flow-releases/releases/download/v#{version}/PR.Flow-#{version}.dmg"
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
