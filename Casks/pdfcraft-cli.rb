cask "pdfcraft-cli" do
  version "0.13.0"
  sha256 "5a7d87875b8f91668da95840982b9c12022be53f5f66cb35ada35de655c1df32"

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
