cask "cadcraft-cli" do
  version "0.12.0"
  sha256 "4d2004635e17f4ab74a5b1c72f34f67f8f90a04f4a20ded7cc8d49c4e6f70991"

  # Upstream's own notarised build; this tap only points at it.
  url "https://github.com/storytold/cadcraft/releases/download/v#{version}/cadcraft-cli-#{version}-macos-universal.zip"
  name "CADCraft CLI"
  desc "Command-line interface and MCP server for CADCraft"
  homepage "https://github.com/storytold/cadcraft"

  livecheck do
    url :url
    strategy :github_latest
  end

  # `mcp --connect` drives the running app: bump this cask with Homebrew's app cask.
  depends_on cask: "cadcraft"

  binary "cadcraft-cli-#{version}-macos-universal/cadcraft-cli"
end
