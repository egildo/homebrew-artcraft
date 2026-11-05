cask "effectcraft-cli" do
  version "0.21.1"
  sha256 "6072d7fc51f503ebfc3daef78ec2dbc3e7bbf400f4cd5f4f559a28371d8ceb1c"

  # Upstream's own notarised build; this tap only points at it.
  url "https://github.com/storytold/effectcraft/releases/download/v#{version}/effectcraft-cli-#{version}-macos-universal.zip"
  name "EffectCraft CLI"
  desc "Command-line interface and MCP server for EffectCraft"
  homepage "https://github.com/storytold/effectcraft"

  livecheck do
    url :url
    strategy :github_latest
  end

  # `mcp --bridge` drives the running app: bump this cask with Homebrew's app cask.
  depends_on cask: "effectcraft"

  binary "effectcraft-cli-#{version}-macos-universal/effectcraft-cli"
end
