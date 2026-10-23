cask "gridcraft-cli" do
  version "0.11.1"
  sha256 "5a1bde181fc38e09e3c3661c33d6b8e924032dc0950de2ba236913294ed3a653"

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
