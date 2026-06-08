cask "pr-flow" do
  version "1.1.0"
  sha256 arm:   "6c0e6d44fdaca2005fda8c32e02bdd3787208f18f2cfb2324ddad116dd3fc683",
         intel: "0cc691091897e1f45f7ce2759f8956ed4fe67b65a9db99062f8ecc1a1cfdc79d"

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
