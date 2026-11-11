cask "pdfcraft-cli" do
  version "0.20.0"
  sha256 "dd10f837318c3fce81f893a988de13efd7ba4be95e281f277cd7c23247aaa122"

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
