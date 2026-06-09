# homebrew-notiful

Homebrew tap for [**Notiful**](https://github.com/ptrinh/Notiful) — a tiny, local-only macOS
menu-bar app that extracts one-time passcodes (2FA / verification codes) from your notifications.

## Install

```sh
brew install ptrinh/notiful/notiful
```

That auto-taps this repo and installs the latest signed, notarized release. Notiful is signed with a
Developer ID certificate and notarized by Apple, so it launches with no Gatekeeper workaround.

Update or remove later:

```sh
brew upgrade --cask notiful
brew uninstall --cask notiful        # add --zap to also delete settings
```

After installing, grant **Full Disk Access** (System Settings → Privacy & Security → Full Disk Access
→ enable Notiful, then relaunch) so it can read the notification database.

See the [main repo](https://github.com/ptrinh/Notiful) for full documentation and source.
