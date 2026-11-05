cask "filmcraft-cli" do
  version "0.17.1"
  sha256 "ca0749fecd44c51caee419d90938d24ce322340d7af1d1660605166f1ecd2755"

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
