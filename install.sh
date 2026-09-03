#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p "$HOME/.local/bin"
cp "$SCRIPT_DIR/cyberplug-toggle" "$HOME/.local/bin/cyberplug-toggle"
chmod +x "$HOME/.local/bin/cyberplug-toggle"

echo "Installed cyberplug-toggle to ~/.local/bin"
echo ""
if ! command -v cyberplug >/dev/null 2>&1; then
    echo "Note: the 'cyberplug' binary itself isn't found on your \$PATH."
    echo "Install it first from https://github.com/darkstardevx/cyberplug"
fi
echo ""
echo "To make the Cyberplug window float instead of tile, add this line"
echo "to ~/.config/hypr/looknfeel.lua, then run: hyprctl reload"
echo ""
echo '  hl.window_rule({ match = { title = "Cyberplug" }, float = true, size = "650 550" })'
