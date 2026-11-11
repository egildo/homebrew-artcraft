cask "effectcraft-cli" do
  version "0.23.1"
  sha256 "405ea3a2ead24ae4dabfda3bf383fc61baa6c2ad4414666eb419d9594df94721"

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
