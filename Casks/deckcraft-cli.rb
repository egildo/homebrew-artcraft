cask "deckcraft-cli" do
  version "0.17.0"
  sha256 "9ab99fbcfcf8365546f9808a34279bbdf7a7edee024222bda238e307e4081bbc"

  # Upstream's own notarised build; this tap only points at it.
  url "https://github.com/storytold/deckcraft/releases/download/v#{version}/deckcraft-cli-#{version}-macos-universal.zip"
  name "DeckCraft CLI"
  desc "Command-line interface and MCP server for DeckCraft"
  homepage "https://github.com/storytold/deckcraft"

  livecheck do
    url :url
    strategy :github_latest
  end

  # `app` drives the running app (started with `--control`): bump this cask with Homebrew's app cask.
  depends_on cask: "deckcraft"

  binary "deckcraft-cli-#{version}-macos-universal/deckcraft-cli"
end
