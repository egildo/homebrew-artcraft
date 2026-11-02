cask "lightcraft-cli" do
  version "0.17.0"
  sha256 "79e111ca32152b869a285bfe3c05548a97132f8c5e1f711f41e0083200a96590"

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
