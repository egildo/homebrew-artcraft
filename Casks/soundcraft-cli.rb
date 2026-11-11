cask "soundcraft-cli" do
  version "0.19.0"
  sha256 "d0bd08082292f972e3435834df437f5d9c8b8f4913586138509d1e1c0ab7d986"

  # Upstream's own notarised build; this tap only points at it.
  url "https://github.com/storytold/soundcraft/releases/download/v#{version}/soundcraft-cli-#{version}-macos-universal.zip"
  name "SoundCraft CLI"
  desc "Command-line interface and MCP server for SoundCraft"
  homepage "https://github.com/storytold/soundcraft"

  livecheck do
    url :url
    strategy :github_latest
  end

  # `app --port` drives the running app: bump this cask with Homebrew's app cask.
  depends_on cask: "soundcraft"

  binary "soundcraft-cli-#{version}-macos-universal/soundcraft-cli"
end
