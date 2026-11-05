cask "photocraft-cli" do
  version "0.20.2"
  sha256 "25f90078e0a3201ac4bd7778bbb4f6de1f2b67357c98e1cc54052d6240eaaa35"

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
