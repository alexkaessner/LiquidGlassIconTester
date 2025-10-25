//
//  LiquidGlassIconTesterApp.swift
//  LiquidGlassIconTester
//
//  Created by Alexander Käßner on 25.10.25.
//

import SwiftUI

@main
struct LiquidGlassIconTesterApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .commands {
            CommandMenu("Icon") {
                Button("Monochrome", image: CustomSymbol.symbol, action: { })
                    .symbolRenderingMode(.monochrome)
                
                Button("Hierarchical", image: CustomSymbol.symbol, action: { })
                    .symbolRenderingMode(.hierarchical)
                
                Button("Palette", image: CustomSymbol.symbol, action: { })
                    .symbolRenderingMode(.palette)
                
                Button("Multicolor", image: CustomSymbol.symbol, action: { })
                    .symbolRenderingMode(.multicolor)
            }
        }
    }
}
