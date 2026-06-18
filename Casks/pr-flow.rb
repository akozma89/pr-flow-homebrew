cask "pr-flow" do
  version "1.4.0"
  sha256 arm:   "d3fb49aee5c116c950521f7a2e9dc8cd52f393e5162691d3639fbb83361ad625",
         intel: "f46a662f7f212db84cba6010f85ec6705c1b751ed98fc7cd1d276abb1f6c5c71"

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
