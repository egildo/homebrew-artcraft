cask "figcraft-cli" do
  version "0.15.1"
  sha256 "3524a76527fc8cc57901735deab03c3c13538ecdc86a0e22037364480ad80cd5"

  # Upstream's own notarised build; this tap only points at it.
  url "https://github.com/storytold/figcraft/releases/download/v#{version}/figcraft-cli-#{version}-macos-universal.zip"
  name "FigCraft CLI"
  desc "Command-line interface and MCP server for FigCraft"
  homepage "https://github.com/storytold/figcraft"

  livecheck do
    url :url
    strategy :github_latest
  end

  # `mcp --attach` drives the running app: bump this cask with Homebrew's app cask.
  depends_on cask: "figcraft"

  binary "figcraft-cli-#{version}-macos-universal/figcraft-cli"
end
