cask "vectorcraft-cli" do
  version "0.23.0"
  sha256 "beab784c2971caa7fd5ab48058e2af69c3c8bf76ef8abfb78e36bdf5b76dee20"

  # Upstream's own notarised build; this tap only points at it.
  url "https://github.com/storytold/vectorcraft/releases/download/v#{version}/vectorcraft-cli-#{version}-macos-universal.zip"
  name "VectorCraft CLI"
  desc "Command-line interface and MCP server for VectorCraft"
  homepage "https://github.com/storytold/vectorcraft"

  livecheck do
    url :url
    strategy :github_latest
  end

  # `mcp` connects to the running app (127.0.0.1:7979 by default): bump this cask with Homebrew's app cask.
  depends_on cask: "vectorcraft"

  binary "vectorcraft-cli-#{version}-macos-universal/vectorcraft-cli"
end
