cask "photocraft-cli" do
  version "0.19.0"
  sha256 "69f321313156728d4a372579dac9b443bc2f9494d3824d3186f536c98aa4388c"

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
