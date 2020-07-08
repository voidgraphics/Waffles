//
//  Sidebar.swift
//  Waffles
//
//  Created by Adrien Leloup on 06/07/2020.
//

import SwiftUI

struct Sidebar: View {
    @State private var selection: Set<Int> = [0]
    var tables: [Table]
    
    @State private var database = "blog"
    var databases = ["blog", "hiker", "udnf"]
    
    var body: some View {
        VStack(alignment: .leading) {
            List(selection: $selection) {
                Picker(selection: $database, label: Text("Choose a database")) {
                    ForEach(databases, id: \.self) { database in
                        Text(database)
                    }
                    HStack {
                        Image(systemName: "plus.circle")
                        Text("Add database")
                    }
                    
                }.labelsHidden().scaledToFill()
                
                
                Text("TABLES")
                    .font(.caption)
                    .fontWeight(.bold)
                    .padding(.top, 20)
                    .padding(.bottom, 7)
                
                ForEach(tables) { table in
                    NavigationLink(destination: Tableview(table: table)) {
                        Image(systemName: "folder")
                        Text(table.name)
                    }
                }
                
                NavigationLink(destination: Text("WIP")) {
                    Image(systemName: "plus.circle")
                    Text("Add table")
                }
            }
            .listStyle(SidebarListStyle())
            .frame(minWidth: 100, idealWidth: 150, maxWidth: 200, maxHeight: .infinity)
        }
    }
}
