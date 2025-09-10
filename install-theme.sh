#!/bin/bash

# Install Transylvanian Twilight theme locally
echo "🎨 Installing Transylvanian Twilight theme..."

# Check if VS Code is installed
if [ ! -d "/Applications/Visual Studio Code.app" ]; then
    echo "❌ VS Code not found in Applications folder"
    echo "Please install VS Code first: https://code.visualstudio.com/"
    exit 1
fi

# Use full path to code command
CODE_CMD="/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code"

# Install the extension
echo "📦 Installing theme extension..."
"$CODE_CMD" --install-extension transylvanian-twilight-*.vsix

if [ $? -eq 0 ]; then
    echo "✅ Transylvanian Twilight theme installed successfully!"
    echo ""
    echo "To activate the theme:"
    echo "1. Open VS Code"
    echo "2. Press Cmd+Shift+P"
    echo "3. Type 'Preferences: Color Theme'"
    echo "4. Select 'Transylvanian Twilight'"
    echo ""
    echo "🌙 Enjoy coding in the mystical Romanian twilight!"
else
    echo "❌ Installation failed"
    exit 1
fi
