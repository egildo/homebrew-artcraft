cask "pdfcraft-cli" do
  version "0.21.1"
  sha256 "337a9f644744b57e10de41c57366e53c5ccf8840a4d5dc7322b17b9b83fdc2fa"

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
