cask "designcraft-cli" do
  version "0.19.0"
  sha256 "30245ba54b026437dc5563a3ad483c1217b7ccbe19871dc7261187311d3b7b74"

  # Upstream's own notarised build; this tap only points at it.
  url "https://github.com/storytold/designcraft/releases/download/v#{version}/designcraft-cli-#{version}-macos-universal.zip"
  name "DesignCraft CLI"
  desc "Command-line interface and MCP server for DesignCraft"
  homepage "https://github.com/storytold/designcraft"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Shares one command registry and control channel with the app: bump this cask with Homebrew's app cask.
  depends_on cask: "designcraft"

  binary "designcraft-cli-#{version}-macos-universal/designcraft-cli"
end
