//
//  WafflesApp.swift
//  Waffles
//
//  Created by Adrien Leloup on 06/07/2020.
//

import SwiftUI

@main
struct WafflesApp: App {
    @ObservedObject var settings = SettingsModel()
    
    @SceneBuilder var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(settings).preferredColorScheme(settings.colorScheme)
        }
        
        #if os(macOS)
        Settings {
            SettingsView()
                .environmentObject(settings)
                .preferredColorScheme(settings.colorScheme)
        }
        #endif
    }
}
