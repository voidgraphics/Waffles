//
//  ContentView.swift
//  Waffles
//
//  Created by Adrien Leloup on 06/07/2020.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var settings: SettingsModel

    var tables = [
        DatabaseTable(name: "posts"),
        DatabaseTable(name: "comments"),
        DatabaseTable(name: "authors"),
    ]

    var body: some View {
        NavigationView {
            Sidebar(tables: tables)
            Tableview(table: tables[0]).environmentObject(settings)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
