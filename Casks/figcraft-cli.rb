cask "figcraft-cli" do
  version "0.14.0"
  sha256 "929fd47f2f03e587caa4090f1d13ec5c0e0ead20bc61005442fcb11da21966b1"

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
