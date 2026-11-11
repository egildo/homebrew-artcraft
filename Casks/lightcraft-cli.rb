cask "lightcraft-cli" do
  version "0.20.0"
  sha256 "b73900c6a3bb71d5b1720e9e779bd50ec551abfb02c952d29ed3756a564be605"

  # Upstream's own notarised build; this tap only points at it.
  url "https://github.com/storytold/lightcraft/releases/download/v#{version}/lightcraft-cli-#{version}-macos-universal.zip"
  name "LightCraft CLI"
  desc "Command-line interface and MCP server for LightCraft"
  homepage "https://github.com/storytold/lightcraft"

  livecheck do
    url :url
    strategy :github_latest
  end

  # `--connect` drives the running app (127.0.0.1:7980 by default): bump this cask with Homebrew's app cask.
  depends_on cask: "lightcraft"

  binary "lightcraft-cli-#{version}-macos-universal/lightcraft-cli"
end
