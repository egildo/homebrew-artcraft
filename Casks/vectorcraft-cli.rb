cask "vectorcraft-cli" do
  version "0.24.1"
  sha256 "7f0c8261e5c831d9681e48272f9ba73bf8702dbf6ceb84f98177c7c007faddf2"

  # Upstream's own notarised build; this tap only points at it.
  url "https://github.com/storytold/vectorcraft/releases/download/v#{version}/vectorcraft-cli-#{version}-macos-universal.zip"
  name "VectorCraft CLI"
  desc "Command-line interface and MCP server for VectorCraft"
  homepage "https://github.com/storytold/vectorcraft"

  livecheck do
    url :url
    strategy :github_latest
  end

  # `mcp` connects to the running app (127.0.0.1:7979 by default): bump this cask with Homebrew's app cask.
  depends_on cask: "vectorcraft"

  binary "vectorcraft-cli-#{version}-macos-universal/vectorcraft-cli"
end
