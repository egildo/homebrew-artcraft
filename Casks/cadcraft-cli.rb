cask "cadcraft-cli" do
  version "0.20.1"
  sha256 "2754055a4f318d028fb9cc7aac0a98987d21c2b5c20f079ca2feb1469f28fb3b"

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
