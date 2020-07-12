//
//  DatabasePicker.swift
//  Waffles
//
//  Created by Adrien Leloup on 12/07/2020.
//

import SwiftUI

struct DatabasePicker: View {
    var selected: String
    var databases: [String]
    @State private var isShowingDatabases = false
    
    var body: some View {
        Button(selected) {
            isShowingDatabases = true
        }
        .buttonStyle(SidebarDropdownButtonStyle())
        .popover(isPresented: $isShowingDatabases, arrowEdge: .bottom) {
            DatabasePickerMenu(selected: selected, databases: databases)
        }
    }
}
