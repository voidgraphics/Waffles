//
//  ContentView.swift
//  Waffles
//
//  Created by Adrien Leloup on 06/07/2020.
//

import SwiftUI

struct ContentView: View {
    var tables = [
        Table(name: "posts"),
        Table(name: "comments"),
        Table(name: "authors")
    ]
    
    var body: some View {
        NavigationView {
            Sidebar(tables: tables)
            Tableview(table: tables[0])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
