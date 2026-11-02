cask "effectcraft-cli" do
  version "0.20.0"
  sha256 "adc713ed5049983bec00c651f307e122074ac542ca48e6a43011dfbfb0f10e16"

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
