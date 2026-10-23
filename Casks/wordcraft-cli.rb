cask "wordcraft-cli" do
  version "0.10.0"
  sha256 "09e3defc57675597f3388fd1b4d4e20b97be3f4e0cd517ae580fc28b421cc1d2"

  # Upstream's own notarised build; this tap only points at it.
  url "https://github.com/storytold/wordcraft/releases/download/v#{version}/wordcraft-cli-#{version}-macos-universal.zip"
  name "WordCraft CLI"
  desc "Command-line interface and MCP server for WordCraft"
  homepage "https://github.com/storytold/wordcraft"

  livecheck do
    url :url
    strategy :github_latest
  end

  # `mcp --connect` drives the running app: bump this cask with Homebrew's app cask.
  depends_on cask: "wordcraft"

  binary "wordcraft-cli-#{version}-macos-universal/wordcraft-cli"
end
