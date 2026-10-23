cask "filmcraft-cli" do
  version "0.12.0"
  sha256 "04f4001afaef16b31f245696808a0393f28d4569e7eda3ee324ae30bf7906310"

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
