cask "wordcraft-cli" do
  version "0.15.2"
  sha256 "b988f1628adc5ce64c872f130b5502cf36ed91fe39a3952ea3b60319f6921062"

  # Upstream's own notarised build; this tap only points at it.
  url "https://github.com/storytold/wordcraft/releases/download/v#{version}/wordcraft-cli-#{version}-macos-universal.zip"
  name "WordCraft CLI"
  desc "Command-line interface and MCP server for WordCraft"
  homepage "https://github.com/storytold/wordcraft"

  livecheck do
    url :url
    strategy :github_latest
  end

  # `mcp --connect` drives the running app: bump this cask with Homebrew's app cask.
  depends_on cask: "wordcraft"

  binary "wordcraft-cli-#{version}-macos-universal/wordcraft-cli"
end
