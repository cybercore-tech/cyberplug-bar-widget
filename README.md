# Cyberplug bar widget

An Omarchy bar icon that opens [Cyberplug](https://github.com/darkstardevx/cyberplug) —
a terminal plugin manager for Omarchy's Quattro shell — in a floating
terminal window.

Requires the `cyberplug` binary itself to be installed first.

## Install

    omarchy plugin add https://github.com/darkstardevx/cyberplug-bar-widget.git --enable

Then run this repo's `install.sh` to place the launcher script:

    ~/.config/omarchy/plugins/darkstardevx.cyberplug/install.sh

Or clone Cyberplug's main repo and run its own `install.sh`, which
offers to install this widget automatically alongside the binary.

## What it does

Clicking the icon runs `cyberplug-toggle`, which:

- Focuses the existing Cyberplug window if one is already open
- Otherwise opens a new floating terminal running `cyberplug`

It auto-detects your terminal (Ghostty, Alacritty, Kitty, foot, or
falls back to `xdg-terminal-exec`) and matches windows by title, since
not every terminal reliably honors a custom window class from the CLI.

## License

MIT
