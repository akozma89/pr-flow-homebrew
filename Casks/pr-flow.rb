cask "pr-flow" do
  version "1.6.1"
  sha256 arm:   "bdc12f2b8ac00ef7b2779c2fdce3157eddffdf75deefccb40e37ba9c85d344bc",
         intel: "384bb1197146127a724dd590f09cce3b7556be0f582d1836cefc320cf81bdc3a"

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
