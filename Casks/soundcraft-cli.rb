cask "soundcraft-cli" do
  version "0.16.0"
  sha256 "9b45a444be1f5733a101ea592c01dea92c259508fab69b66053cac1aac5ae54b"

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
