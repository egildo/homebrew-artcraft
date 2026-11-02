cask "designcraft-cli" do
  version "0.16.0"
  sha256 "9985ca3ceda27bd4c59b28121fcd99e33fef088380059f69f3e7e7409ff24f1a"

  # Upstream's own notarised build; this tap only points at it.
  url "https://github.com/storytold/designcraft/releases/download/v#{version}/designcraft-cli-#{version}-macos-universal.zip"
  name "DesignCraft CLI"
  desc "Command-line interface and MCP server for DesignCraft"
  homepage "https://github.com/storytold/designcraft"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Shares one command registry and control channel with the app: bump this cask with Homebrew's app cask.
  depends_on cask: "designcraft"

  binary "designcraft-cli-#{version}-macos-universal/designcraft-cli"
end
