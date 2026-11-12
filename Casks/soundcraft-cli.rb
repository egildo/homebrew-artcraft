cask "soundcraft-cli" do
  version "0.20.1"
  sha256 "866fcbfe32179e6652159385b4f676ba756e1cadb88fac3e9173e9643f763b51"

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
