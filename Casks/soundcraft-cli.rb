cask "soundcraft-cli" do
  version "0.17.1"
  sha256 "1634dd1c63aff8fcc5704b168642be8173cc0dda631da7e4ec985a5094833af8"

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
