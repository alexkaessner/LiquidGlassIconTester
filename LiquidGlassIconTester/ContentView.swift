//
//  ContentView.swift
//  LiquidGlassIconTester
//
//  Created by Alexander Käßner on 25.10.25.
//

import SwiftUI

struct ContentView: View {
    @State private var iconScale: Image.Scale = .medium
    
    @State private var primaryColor: Color = .primary
    @State private var secondaryColor: Color = .green
    @State private var tertiaryColor: Color = .blue
    
    @State private var gradient: Bool = false
    
    let standardColors: [(name: String, color: Color)] = [
        ("Primary", .primary),
        ("Secondary", .secondary),
        ("Red", .red),
        ("Orange", .orange),
        ("Yellow", .yellow),
        ("Green", .green),
        ("Mint", .mint),
        ("Teal", .teal),
        ("Cyan", .cyan),
        ("Blue", .blue),
        ("Indigo", .indigo),
        ("Purple", .purple),
        ("Pink", .pink),
        ("Brown", .brown),
        ("Black", .black),
        ("Gray", .gray),
        ("White", .white)
    ]
    
    var body: some View {
        NavigationStack {
            Form {
                /// Preview of different rendering modes.
                Section("Symbol Preview") {
                    LabeledContent("Monochrome") {
                        Image(CustomSymbol.symbol)
                            .symbolRenderingMode(.monochrome)
                    }
                    
                    LabeledContent("Hierarchical") {
                        Image(CustomSymbol.symbol)
                            .symbolRenderingMode(.hierarchical)
                    }
                    
                    LabeledContent("Palette") {
                        Image(CustomSymbol.symbol)
                            .symbolRenderingMode(.palette)
                    }
                    
                    LabeledContent("Multicolor") {
                        Image(CustomSymbol.symbol)
                            .symbolRenderingMode(.multicolor)
                    }
                }
                .foregroundStyle(primaryColor, secondaryColor, tertiaryColor)
                .symbolColorRenderingMode(gradient ? .gradient : .flat)
                .imageScale(iconScale)
                
                /// Preview as button icon.
                Section {
                    Button("Test Button", image: CustomSymbol.symbol) {
                        // Do something
                    }
                }
                
                /// Styling settings for the icon preview
                Section("Preview Settings") {
                    Picker("Icon Size", selection: $iconScale) {
                        Text("Small").tag(Image.Scale.small)
                        Text("Medium").tag(Image.Scale.medium)
                        Text("Large").tag(Image.Scale.large)
                    }
                }
                
                /// Color selection for the icon preview
                Section {
                    Picker("Primary Color", selection: $primaryColor) {
                        ForEach(standardColors, id: \.name) { name, color in
                            Label {
                                Text(name)
                            } icon: {
                                Image(systemName: "circle.fill")
                                    .tint(color)
                            }
                            .tag(color)
                        }
                    }
                    
                    Picker("Secondary Color", selection: $secondaryColor) {
                        ForEach(standardColors, id: \.name) { name, color in
                            Label {
                                Text(name)
                            } icon: {
                                Image(systemName: "circle.fill")
                                    .tint(color)
                            }
                            .tag(color)
                        }
                    }
                    
                    Picker("Tertiary Color", selection: $tertiaryColor) {
                        ForEach(standardColors, id: \.name) { name, color in
                            Label {
                                Text(name)
                            } icon: {
                                Image(systemName: "circle.fill")
                                    .tint(color)
                            }
                            .tag(color)
                        }
                    }
                    
                    Toggle("Gradient", isOn: $gradient)
                }
            }
            .formStyle(.grouped)
            .navigationTitle("Icon Tester")
            .toolbar {
                /// Preview of different rendering modes in the toolbar.
                ToolbarItemGroup(placement: .automatic) {
                    Button("Monochrome", image: CustomSymbol.symbol, action: { })
                        .symbolRenderingMode(.monochrome)
                    
                    Button("Hierarchical", image: CustomSymbol.symbol, action: { })
                        .symbolRenderingMode(.hierarchical)
                        .foregroundStyle(primaryColor)
                    
                    Button("Palette", image: CustomSymbol.symbol, action: { })
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(primaryColor, secondaryColor, tertiaryColor)
                    
                    Button("Multicolor", image: CustomSymbol.symbol, action: { })
                        .symbolRenderingMode(.multicolor)
                        .foregroundStyle(primaryColor)
                }
                
                #if os(iOS)
                ToolbarItem(placement: .topBarLeading) {
                    Button("Information", systemImage: "info", action: { })
                        .symbolVariant(.circle)
                }
                
                ToolbarItem(placement: .bottomBar) {
                    Button("Play Animation", systemImage: "play", action: { })
                }
                
                ToolbarSpacer(placement: .bottomBar)
                
                ToolbarItem(placement: .bottomBar) {
                    Button("Highlighted", image: CustomSymbol.symbol, action: { })
                        .buttonStyle(.borderedProminent)
                }
                #endif
            }
        }
    }
}


// MARK: - Preview
#Preview {
    ContentView()
}
