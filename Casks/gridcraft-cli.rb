cask "gridcraft-cli" do
  version "0.18.0"
  sha256 "4d9b6ef518a5740007a88bcad1551c09bd90f0c6829b1a4622364d85b92f5556"

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
