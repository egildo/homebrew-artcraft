cask "wordcraft-cli" do
  version "0.17.0"
  sha256 "edb73c8562541df448884fcddc03540980a4a64939d363ab90b59a08b95b14d0"

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
