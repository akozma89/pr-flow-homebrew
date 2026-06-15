cask "pr-flow" do
  version "1.3.2"
  sha256 arm:   "6b1ae9e7270f460e41e732d3b178791459705fcd414ba7150d4a17865a932d44",
         intel: "12d40dd57c06fa11d474b38df5236ddc2bc2846349b5d1ffd0e167de5d0de0e2"

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
