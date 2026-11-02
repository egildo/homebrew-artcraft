cask "pdfcraft-cli" do
  version "0.17.0"
  sha256 "8c826ae5659e32c1027a7a9daf53ffcb5b6bd8f48767ea1272f6f1e32cb354f6"

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
