cask "pr-flow" do
  version "1.0.5"
  sha256 arm:   "16b38b0daf7f9b4919bbf360f3faffa3dab11e95d8daccc0a895303a5f4c5ad9",
         intel: "1c21ff2366b6be827e6cfb1bf30ad67a406b1c1907f94fafeb2becfc7f7a01fd"

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
