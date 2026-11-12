cask "effectcraft-cli" do
  version "0.24.1"
  sha256 "2781eda194372ad47f4c0c7df8b1d38501a3e90bb499282f57e9598a85958673"

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
