cask "pr-flow" do
  version "1.22.0"
  sha256 "0f6ecf1da93d9f4ad67476b42cbf583834c08c7557b6f69b9a46c8560cb03e4d"

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
