#!/bin/bash

# Package the Transylvanian Twilight VS Code theme
echo "📦 Packaging Transylvanian Twilight theme..."

# Check if vsce is installed
if ! command -v vsce &> /dev/null; then
    echo "🔧 Installing vsce (VS Code Extension Manager)..."
    npm install -g @vscode/vsce
fi

# Package the extension
echo "🎨 Creating .vsix package..."
vsce package

echo "✨ Transylvanian Twilight theme has been packaged successfully!"
echo "📁 Look for the .vsix file in the current directory"
echo ""
echo "To install locally:"
echo "  code --install-extension transylvanian-twilight-*.vsix"
echo ""
echo "To publish to marketplace:"
echo "  vsce publish"
