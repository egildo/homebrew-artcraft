cask "wordcraft-cli" do
  version "0.18.1"
  sha256 "34397cf6fcf73ee8ae8d53cab08fbdfc213262dbb6753c2965ebb7cde37b8616"

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
