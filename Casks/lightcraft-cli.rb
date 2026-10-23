cask "lightcraft-cli" do
  version "0.13.0"
  sha256 "5c456eefc93558db123ed2203f60c7819fa8ed3607bf715404a71005f9342200"

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
