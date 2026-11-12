cask "lightcraft-cli" do
  version "0.21.0"
  sha256 "7a974c00254d2a909fc3c63133fd78ae16ad2ab5039a1269858eb50a53e0ebca"

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
