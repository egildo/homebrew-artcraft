cask "vectorcraft-cli" do
  version "0.16.0"
  sha256 "f68c204642c598ab76e51a773f6aa80e3ff0ed303c78fdf4c36c4dfbad2a76f6"

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
