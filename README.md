# Liquid Glass App Icon Tester

![Requires Xcode 26.0+](https://img.shields.io/badge/Requires_Xcode_26.0%2B-%23147EFB?logo=xcode&logoColor=ffffff&link=https%3A%2F%2Fdeveloper.apple.com%2Fxcode%2F)

This is a simple template project to quickly test your Liquid Glass app icons and custom SF Symbols for Apple’s platforms.

![Download](https://img.shields.io/badge/Download-%23147EFB?style=for-the-badge&link=https%3A%2F%2Fgithub.com%2Falexkaessner%2FLiquidGlassIconTester%2Farchive%2Frefs%2Fheads%2Fmain.zip)

![macOS Screenshot](ExampleMac.png)

## Requirements
Make sure you’ve installed Xcode 26 or newer!

## How to use it?
### App Icon
1. Replace the `AppIcon.icon` file with your own file.
   - Best done in the Finder! Via right click the file in Xcode and select “Show in Finder” to replace it there.
2. Select the device you want to test in the titlebar.
3. Press run (⌘K) aka play button.

> [!CAUTION]
> When replacing the icon make sure to first do a “Clean Build Folder” (⇧⌘K) first (via the „Product" main menu). Otherwise the previous app icon might still be stuck in the cache and will not be replaced.

> [!TIP]
> If you want to use your own icon name, you also need to match the name in Xcode. To do that select the project file in the sidebar. Then on the right side go to: Targets → LiquidGlassIconTester → General → App Icons and Launch Screen → App Icon.

### SF Symbol
1. Replace the `custom.symbol.svg` file with your own file in “Assets”.
   - Best done in the Finder! Via right click the file in Xcode and select “Show in Finder” to replace it there.
2. Select the device you want to test in the titlebar.
3. Press run (⌘K) aka play button.

> [!TIP]
> If you want to use your own symbol name, you also need to match the name in the `CustomSymbol.swift` file.

## Contribute
Feel free to suggest things as [issue](https://github.com/alexkaessner/LiquidGlassIconTester/issues) or create a PR request, if you want to help improving this template.