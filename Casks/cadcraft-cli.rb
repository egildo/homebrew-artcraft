cask "cadcraft-cli" do
  version "0.19.0"
  sha256 "6db9565a5fec6bacdfccbf62628a89e4430c9dbb5cc1eb85dbbef71e36e49da9"

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
