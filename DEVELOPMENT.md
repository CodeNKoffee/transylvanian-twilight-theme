# Transylvanian Twilight - Development Guide

## Testing the Theme

To test your Transylvanian Twilight theme in VS Code:

1. **Open in VS Code**:
   ```bash
   code .
   ```

2. **Press F5** to launch a new Extension Development Host window with your theme loaded

3. **Activate the theme**:
   - Press `Cmd+Shift+P` (or `Ctrl+Shift+P` on Windows/Linux)
   - Type "Preferences: Color Theme"
   - Select "Transylvanian Twilight"

## Color Palette Quick Reference

### Background Stack
- Carpathian Midnight: `#0B1220` (editor.background)
- Danube Depths: `#0E1628` (sidebars, panels)
- Transylvanian Shadow: `#111A2E` (title bar, menus)
- Bucegi Cave: `#141E36` (hovers, tooltips)
- Iași Blue Hour: `#1A2442` (selections)

### Text Colors
- Cluj Snow: `#E6EDF3` (primary text)
- Sibiu Moonlight: `#B8C4D9` (secondary text)
- Bucharest Mist: `#8FA1BF` (comments, italic)
- Brașov Slate: `#6C7A96` (disabled)

### Syntax Colors
- Keywords/Classes: `#B69CFF` (Transylvanian Purple)
- Functions/Links: `#4FC3F7` (Constanța Blue)
- Strings/Success: `#2EE6A6` (Apuseni Teal)
- Constants/Literals: `#FF6AD5` (Doina Magenta)
- Types/Enums: `#C4B5FD` (Mureș Lavender)
- Cursors/Highlights: `#7FE9FF` (Danube Delta Cyan)

### State Colors
- Success: `#6EE7B7` (Carpathian Pine)
- Warning: `#F5C542` (Wheatfield Gold)
- Error: `#F97070` (Mărțișor Coral)
- Info: `#60A5FA` (Dobrogea Blue)

## Making Changes

1. Edit `themes/Transylvanian Twilight-color-theme.json`
2. Press `Ctrl+R` (or `Cmd+R`) in the Extension Development Host to reload
3. Changes should be visible immediately

## Packaging for Distribution

Run the package script:
```bash
./package-theme.sh
```

Or manually:
```bash
npm install -g @vscode/vsce
vsce package
```

This creates a `.vsix` file that can be installed locally or published to the marketplace.

## Publishing to VS Code Marketplace

1. Create a Personal Access Token at https://dev.azure.com
2. Create a publisher account at https://marketplace.visualstudio.com
3. Login with vsce: `vsce login <publisher-name>`
4. Publish: `vsce publish`

## Installation from .vsix

```bash
code --install-extension transylvanian-twilight-1.0.0.vsix
```
