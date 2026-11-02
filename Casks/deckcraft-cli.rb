cask "deckcraft-cli" do
  version "0.14.1"
  sha256 "e007433fbb7ee9d50efc6701b3f54a296b3e979a04aeac7ba0c586357f9bb0d3"

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
