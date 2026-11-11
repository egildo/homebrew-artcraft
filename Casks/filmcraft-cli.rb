cask "filmcraft-cli" do
  version "0.19.0"
  sha256 "1461679ccbef12e3f343ef24cce48b1ed473bb6285da8acdb3f8c2368cb7d3cd"

  # Upstream's own notarised build; this tap only points at it.
  url "https://github.com/storytold/filmcraft/releases/download/v#{version}/filmcraft-cli-#{version}-macos-universal.zip"
  name "FilmCraft CLI"
  desc "Command-line interface and MCP server for FilmCraft"
  homepage "https://github.com/storytold/filmcraft"

  livecheck do
    url :url
    strategy :github_latest
  end

  # `--bridge` drives the running app: bump this cask with Homebrew's app cask.
  depends_on cask: "filmcraft"

  binary "filmcraft-cli-#{version}-macos-universal/filmcraft-cli"
end
