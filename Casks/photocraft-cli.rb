cask "photocraft-cli" do
  version "0.22.0"
  sha256 "60e5bf1e689e58a800763867fbed193b7297d6366bbece57b6b78abd9ada875b"

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
