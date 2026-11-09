# homebrew-hutchbar

Homebrew tap for [hutchbar](https://github.com/Code-oclock/hutchbar), a macOS menu bar
cockpit for coding agents.

```sh
brew install --cask code-oclock/hutchbar/hutchbar
```

hutchbar releases are **ad-hoc signed and not notarized**. Installing through this tap is an
explicit choice to trust the app: the cask removes the quarantine flag after installing, so
Gatekeeper does not block the first launch. The download is checked against the SHA-256 in
`Casks/hutchbar.rb`, which is updated from the release's `SHA256SUMS`. This does not
authenticate the publisher; read the [release notes](https://github.com/Code-oclock/hutchbar/releases)
and [privacy notes](https://github.com/Code-oclock/hutchbar/blob/main/docs/PRIVACY.md) first.

To remove it: `brew uninstall --cask hutchbar` (add `--zap` to delete its data).

Apple silicon, macOS 14 or later. Licensed under GPL-3.0-or-later like hutchbar.
