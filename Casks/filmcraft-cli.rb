cask "filmcraft-cli" do
  version "0.20.1"
  sha256 "1651d9defb54f853cbd69016428bb9f72a7bf26d56e4755b8e2a79535fd0ac82"

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
