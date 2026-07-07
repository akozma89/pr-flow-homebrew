cask "pr-flow" do
  version "1.7.2"
  sha256 arm:   "ab25ce3ade1f01c428b076a81c11c28d207ea299f5f94dfe34cebed0e954d9ce",
         intel: "d81589356a2ffcbafa46da60c6fd95799facba893bcf7b6334ea3eb7ad0ea172"

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
