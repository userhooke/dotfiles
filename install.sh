#!/usr/bin/env bash

set -e

function vscode() {
    VSCODE_CONFIG_PATH="$HOME/Library/Application Support/Code/User"
    
    mv "$VSCODE_CONFIG_PATH/settings.json" bak.settings.json
    mv "$VSCODE_CONFIG_PATH/keybindings.json" bak.keybindings.json

    ln -s "$(pwd)/vscode/settings.json" "$VSCODE_CONFIG_PATH/settings.json"
    ln -s "$(pwd)/vscode/keybindings.json" "$VSCODE_CONFIG_PATH/keybindings.json"
    echo "✅ vscode config installed"
}

vscode
