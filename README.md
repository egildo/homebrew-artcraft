# homebrew-artcraft

One tap for the whole [ArtCraft](https://getartcraft.com) suite by [storytold](https://github.com/storytold): the apps and their command-line tools.

```bash
brew tap egildo/artcraft
brew trust --tap egildo/artcraft                   # Homebrew 7 loads other taps' casks only once trusted
brew install --cask egildo/artcraft/figcraft-cli   # the CLI, and FigCraft with it
brew install --cask egildo/artcraft/figcraft       # the app alone
```

Homebrew's own casks (`homebrew/cask`) already carry the apps, and Homebrew keeps them current. They do not carry the CLIs, and that is what this tap adds. Each CLI depends on its app, so installing the CLI brings the app as well. The app names also work through this tap: `tap_migrations.json` sends `egildo/artcraft/<app>` to Homebrew's cask, so the apps are never duplicated here.

Everything at once:

```bash
brew install --cask artcraft artcraft-launcher egildo/artcraft/{cad,deck,design,effect,fig,film,grid,light,pdf,photo,sound,vector,word}craft-cli
```

## What is here

| App (Homebrew's cask) | CLI (this tap) |
|---|---|
| [ArtCraft](https://github.com/storytold/artcraft) | none |
| [ArtCraft Launcher](https://github.com/storytold/craft-launcher) | none |
| [CADCraft](https://github.com/storytold/cadcraft) | `cadcraft-cli` |
| [DeckCraft](https://github.com/storytold/deckcraft) | `deckcraft-cli` |
| [DesignCraft](https://github.com/storytold/designcraft) | `designcraft-cli` |
| [EffectCraft](https://github.com/storytold/effectcraft) | `effectcraft-cli` |
| [FigCraft](https://github.com/storytold/figcraft) | `figcraft-cli` |
| [FilmCraft](https://github.com/storytold/filmcraft) | `filmcraft-cli` |
| [GridCraft](https://github.com/storytold/gridcraft) | `gridcraft-cli` |
| [LightCraft](https://github.com/storytold/lightcraft) | `lightcraft-cli` |
| [PdfCraft](https://github.com/storytold/pdfcraft) | `pdfcraft-cli` |
| [PhotoCraft](https://github.com/storytold/photocraft) | `photocraft-cli` |
| [SoundCraft](https://github.com/storytold/soundcraft) | `soundcraft-cli` |
| [VectorCraft](https://github.com/storytold/vectorcraft) | `vectorcraft-cli` |
| [WordCraft](https://github.com/storytold/wordcraft) | `wordcraft-cli` |

Each CLI is its app's command line and MCP server. Homebrew's core has a formula named `photocraft-cli` (the headless engine alone), so install this tap's one by its full name, `egildo/artcraft/photocraft-cli`.

## Where the binaries come from

Upstream's own release assets (`<app>-cli-<version>-macos-universal.zip`), notarised by storytold, Apache-2.0 (the archives also carry an MIT licence). The casks point straight at them; nothing is rebuilt or rehosted. The `sha256` values are the ones in upstream's `SHA256SUMS.txt`.

## Keeping it current

A CLI talks to its running app, so each CLI follows the version of its app in Homebrew's cask rather than upstream's newest release. `bin/bump` does the mechanical part: it moves every CLI to its app's Homebrew version, takes the checksum from upstream's `SHA256SUMS.txt`, and lists any storytold app in Homebrew that this tap does not know yet. It needs only `curl` and `jq` and commits nothing.

With Claude Code, open this repository and ask it to update the tap: the `bump` skill in `.claude/skills/` runs the whole round (bump, add new apps, check, commit).
