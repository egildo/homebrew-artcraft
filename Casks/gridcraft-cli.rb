cask "gridcraft-cli" do
  version "0.15.0"
  sha256 "0fa37e85a6acdf6abc0189b25f6bfdc4bdadb1370718879892dbf7cb0a43bbec"

  # Upstream's own notarised build; this tap only points at it.
  url "https://github.com/storytold/gridcraft/releases/download/v#{version}/gridcraft-cli-#{version}-macos-universal.zip"
  name "GridCraft CLI"
  desc "Command-line interface and MCP server for GridCraft"
  homepage "https://github.com/storytold/gridcraft"

  livecheck do
    url :url
    strategy :github_latest
  end

  # `mcp --connect` drives the running app: bump this cask with Homebrew's app cask.
  depends_on cask: "gridcraft"

  binary "gridcraft-cli-#{version}-macos-universal/gridcraft-cli"
end
