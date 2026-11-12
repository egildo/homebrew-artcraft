cask "gridcraft-cli" do
  version "0.19.1"
  sha256 "7c2895ebad0bbd92b65c622ba7e22ada56e0498065dfdbd433111ba1e225eb8a"

  # Upstream's own notarised build; this tap only points at it.
  url "https://github.com/storytold/gridcraft/releases/download/v#{version}/gridcraft-cli-#{version}-macos-universal.zip"
  name "GridCraft CLI"
  desc "Command-line interface and MCP server for GridCraft"
  homepage "https://github.com/storytold/gridcraft"

  livecheck do
    url :url
    strategy :github_latest
  end

  # `mcp --connect` drives the running app: bump this cask with Homebrew's app cask.
  depends_on cask: "gridcraft"

  binary "gridcraft-cli-#{version}-macos-universal/gridcraft-cli"
end
