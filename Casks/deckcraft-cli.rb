cask "deckcraft-cli" do
  version "0.18.1"
  sha256 "10992f73c88a4c0361dd0fec3a4d7490731ffb3ea9658ee2274b396e3341af00"

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
