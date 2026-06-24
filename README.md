# PR Flow Homebrew Tap

Homebrew tap for [PR Flow](https://github.com/akozma89/pr-flow-releases) — a menu-bar PR review assistant for GitHub & Gerrit.

## Install

```sh
brew trust akozma89/pr-flow-homebrew
brew tap akozma89/pr-flow-homebrew https://github.com/akozma89/pr-flow-homebrew
brew install --cask pr-flow
xattr -dr com.apple.quarantine '/Applications/PR Flow.app'
```

> The `xattr` step removes macOS Gatekeeper quarantine. Required on first install since the app is not yet notarized.

## Update

```sh
brew tap akozma89/pr-flow-homebrew https://github.com/akozma89/pr-flow-homebrew
brew upgrade --cask pr-flow
xattr -dr com.apple.quarantine '/Applications/PR Flow.app'
```

## Uninstall

```sh
brew uninstall --cask pr-flow
brew untap akozma89/pr-flow-homebrew
```
