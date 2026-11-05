cask "designcraft-cli" do
  version "0.17.2"
  sha256 "3d3b0ad3cda23344dbfba5f08a46dbfc81a02477dc644ca2b1266dee23198372"

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
