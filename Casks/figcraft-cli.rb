cask "figcraft-cli" do
  version "0.17.0"
  sha256 "42ca7e870c7e9c2dd574de176f1e0640e016123f83d3244b501e60f905f3a50a"

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
