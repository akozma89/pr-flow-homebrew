cask "pr-flow" do
  version "1.7.0"
  sha256 arm:   "e64f81b0bfd23f2ea16326875f2481a94be2c88eb49644eae159a9ad36c84077",
         intel: "c220a529ba8e1833549dfe224e8ef4f3f9937d32e87d6a569c23ed315ee8adb1"

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
