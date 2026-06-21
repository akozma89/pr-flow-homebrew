cask "pr-flow" do
  version "1.5.1"
  sha256 arm:   "eb4cdf5dba59a15987be921e03bf91f232f6e651d9cd6f5d94d94613044eab57",
         intel: "e4faabe4e943cfca3e0e421a77c2dd0e3c1dc083fa8f1c1d86d458d93105e9c5"

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
