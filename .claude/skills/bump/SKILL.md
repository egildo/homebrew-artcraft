---
name: bump
description: Update the egildo/artcraft Homebrew tap. Moves each storytold Craft CLI cask to its app's version in Homebrew's own casks, adds casks for Craft apps that are new to Homebrew, checks, installs and commits them. Use for "update the tap", "bump the CLIs", "a new Craft release is out", "add the new Craft app", or when an installed *craft-cli is behind its app.
---

# Updating the tap

The apps live in Homebrew's own casks (`homebrew/cask`), which Homebrew keeps current. This tap carries only the CLIs, plus `tap_migrations.json`, which sends `egildo/artcraft/<app>` to Homebrew's cask. Upstream releases several times a day, so a round is short and frequent.

**The one rule: a CLI follows its app's version in Homebrew, never upstream's newest release.** The CLI drives the running app over a control channel, and a mismatched pair can fail. If upstream is ahead of Homebrew, wait: Homebrew's autobump usually catches up within hours. `bin/bump` already follows this rule.

## The round

Work from this repository's root.

1. **Bump.** `brew update`, then `bin/bump`. It prints one line per moved cask (`cadcraft-cli: 0.12.0 -> 0.13.0`), `skipped` when upstream's checksum list has no CLI zip for that version, and `new app: <token>` for a storytold cask this tap does not know.
2. **A skipped cask** means upstream renamed or dropped the zip for that release. Look at the release with `gh release view -R storytold/<app> v<version>` and report it. Don't guess a new URL.
3. **A new app** (`new app: <token>`):
   - Add `"<token>": "homebrew/cask"` to `tap_migrations.json`, keeping it alphabetical.
   - If its release has `<token>-cli-<version>-macos-universal.zip`, copy a sibling cask to `Casks/<token>-cli.rb` and change the token, the app name (exactly as Homebrew's cask spells it: `brew info --cask <token>`) and the comment above `depends_on`. The comment says how the CLI reaches the app; read the CLI's `--help` for it.
   - Check the archive layout before trusting the `binary` line: `unzip -Z1 <zip>` must show `<token>-cli-<version>-macos-universal/<token>-cli`.
   - Then run `bin/bump` again to fill the version and checksum.
   - Add a row to the table in `README.md` and the token to the "Everything at once" line.
4. **Check.** `brew style --fix Casks`, then `brew audit --cask --online egildo/artcraft/<cask>` for each changed cask. This needs the tap installed (`brew tap egildo/artcraft`) and the changes present in it (see below).
5. **Try it.** For each changed CLI that is installed, `brew upgrade --cask egildo/artcraft/<cask>`, then `<cask> --help` to see that it runs. Install a new one with `brew install --cask egildo/artcraft/<cask>`.
6. **Commit.** One commit per round. The message names what moved: `cadcraft-cli 0.13.0, pdfcraft-cli 0.14.0: follow Homebrew's apps`; for a new app: `filmcraft-cli 0.12.0: a cask for upstream's notarised build`.
7. **Push only when the person you're working for says so.** The tap is public and others install from it.

## Where the tap lives

`brew audit` and `brew install` read the tapped copy, `$(brew --repository egildo/artcraft)`. If this checkout is not that directory, the edits are not visible to Homebrew until they are pushed and `brew update` has run. On the maintainer's Mac the tapped copy is a symlink to the working checkout, so they are the same files.

## Known quirks

- **`photocraft-cli`** clashes with a formula of the same name in Homebrew's core. Always use the full name, `egildo/artcraft/photocraft-cli`.
- **ArtCraft and ArtCraft Launcher** have no CLI. They are in `tap_migrations.json` only.
- **Tags** are `v<version>` for every app that has a CLI. ArtCraft itself uses `artcraft-v<version>`, which does not matter here.
