cask "cadcraft-cli" do
  version "0.16.0"
  sha256 "bcf18369e36eaa409a2d4d67fd30eb889713bc08b9e7a30ba1967c974d1d556d"

  # Upstream's own notarised build; this tap only points at it.
  url "https://github.com/storytold/cadcraft/releases/download/v#{version}/cadcraft-cli-#{version}-macos-universal.zip"
  name "CADCraft CLI"
  desc "Command-line interface and MCP server for CADCraft"
  homepage "https://github.com/storytold/cadcraft"

  livecheck do
    url :url
    strategy :github_latest
  end

  # `mcp --connect` drives the running app: bump this cask with Homebrew's app cask.
  depends_on cask: "cadcraft"

  binary "cadcraft-cli-#{version}-macos-universal/cadcraft-cli"
end
