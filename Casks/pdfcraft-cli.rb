cask "pdfcraft-cli" do
  version "0.18.2"
  sha256 "34eb1ac0e366dd839adb6f3e6ed05c0a0f04957399c73dfb28e666a03ad35303"

  # Upstream's own notarised build; this tap only points at it.
  url "https://github.com/storytold/pdfcraft/releases/download/v#{version}/pdfcraft-cli-#{version}-macos-universal.zip"
  name "PdfCraft CLI"
  desc "Command-line interface and MCP server for PdfCraft"
  homepage "https://github.com/storytold/pdfcraft"

  livecheck do
    url :url
    strategy :github_latest
  end

  # `ui --control` drives the running app (started with `--control`): bump this cask with Homebrew's app cask.
  depends_on cask: "pdfcraft"

  binary "pdfcraft-cli-#{version}-macos-universal/pdfcraft-cli"
end
