cask "filmcraft-cli" do
  version "0.16.0"
  sha256 "5182a2dbd9044a6e9f985665122e38f4d7e607af4fb9b7309c0aa91aec682bb5"

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
