cask "photocraft-cli" do
  version "0.14.0"
  sha256 "2ed3632ca7769ac4002943d311dcee12963d655317e1bff36e50d9421c6ed0b7"

  # Upstream's own notarised build; this tap only points at it.
  url "https://github.com/storytold/photocraft/releases/download/v#{version}/photocraft-cli-#{version}-macos-universal.zip"
  name "PhotoCraft CLI"
  desc "Command-line interface and MCP server for PhotoCraft"
  homepage "https://github.com/storytold/photocraft"

  livecheck do
    url :url
    strategy :github_latest
  end

  # `mcp` can bridge to the running app: bump this cask with Homebrew's app cask.
  depends_on cask: "photocraft"

  binary "photocraft-cli-#{version}-macos-universal/photocraft-cli"
end
