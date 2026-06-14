cask "pr-flow" do
  version "1.3.1"
  sha256 arm:   "5a071a11463ec88ec0756a96c09e1d0c082e26945f522b9e66037d2d7e436744",
         intel: "aed9dbf7ca7b6f7458b4b1715da85caa5aa9ff4fe1d4f2314496de92e69dc0b0"

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
