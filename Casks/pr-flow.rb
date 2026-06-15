cask "pr-flow" do
  version "1.3.3"
  sha256 arm:   "da0f0448b0d2aceb5d152c63c24e10b425b6474b3ca1971c6bfdb7bf90804f9b",
         intel: "60917a186c3baf67fa37b480a6001ed26632c2cf6b8fe29a70ab399701465b2a"

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
