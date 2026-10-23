cask "designcraft-cli" do
  version "0.12.0"
  sha256 "3a8ebebf03ded56a5b5128f80ec7859351adad94fd8964fd7991acf648a0cd7c"

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
