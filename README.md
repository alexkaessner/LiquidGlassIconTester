# Liquid Glass App Icon Tester

[![Requires Xcode 26.0+](https://img.shields.io/badge/Requires_Xcode_26.0%2B-%23147EFB?logo=xcode&logoColor=ffffff)](https://developer.apple.com/xcode/)

![macOS Screenshot](ExampleMac.png)

This is a simple template project to quickly test your Liquid Glass app icons and custom SF Symbols for Apple’s platforms.

[![Download](https://img.shields.io/badge/Download-%23428646?style=for-the-badge)](https://github.com/alexkaessner/LiquidGlassIconTester/archive/refs/heads/main.zip)

## Requirements
Make sure you’ve installed Xcode 26 or newer!

## How to use it?
### App Icon
1. Replace the `AppIcon.icon` file with your own Icon Composer file.
   - Best done in the Finder! Use right click on the file in Xcode and select “Show in Finder” to replace it there.
2. Select the device you want to test in the titlebar (My Mac or iOS Simulator).
3. Press run (⌘K) aka play button.

> [!CAUTION]
> **After replacing the icon make sure to do a “Clean Build Folder” (⇧⌘K) (via the „Product" main menu) before running the build.** Xcode keeps the app icon cached quite heavily, so a clean build ensures the new icon is loaded correctly.

> [!TIP]
> If you want to use your own icon name, you also need to match the name in Xcode. To do that select the project file in the sidebar. Then on the right side go to: Targets → LiquidGlassIconTester → General → App Icons and Launch Screen → App Icon

### SF Symbol
1. Replace the `custom.symbol.svg` file with your own file in “Assets”.
   - Best done in the Finder! Use right click on the file in Xcode and select “Show in Finder” to replace it there.
2. Select the device you want to test in the titlebar (My Mac or iOS Simulator).
3. Press run (⌘K) aka play button.

> [!TIP]
> If you want to use your own symbol name, you also need to match the name in the `CustomSymbol.swift` file.

## Contribute
Feel free to suggest things as [issue](https://github.com/alexkaessner/LiquidGlassIconTester/issues) or create a PR request, if you want to help improving this template.