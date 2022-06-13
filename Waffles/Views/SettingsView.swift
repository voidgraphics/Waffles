//
//  Settings.swift
//  Waffles
//
//  Created by Adrien Leloup on 10/07/2020.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var model: SettingsModel
    
    var colorSchemeNames = [
        ColorScheme.dark: "Dark mode",
        ColorScheme.light: "Light mode"
    ]

    
    var appearance: some View {
            TabView {
                Form {
                    HStack {
                        Button(action: { model.tableRowPadding -= 1 }) {
                            Text("-")
                        }
                        Text("\(model.tableRowPadding)")
                        Button(action: { model.tableRowPadding += 1 }) {
                            Text("+")
                        }
                    }
                    
                    Picker("Color scheme", selection: $model.colorScheme) {
                        ForEach(ColorScheme.allCases, id: \.self) { scheme in
                            Text(colorSchemeNames[scheme] ?? "uhh")
                        }
                    }
                }.tabItem {
                    Text("General")
                    Image(systemName: "gearshape")
                }
                .padding(20)
                .frame(width: 375)
            }
            
        }
        
    
    
    var body: some View {
        appearance
        .padding()
        
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
