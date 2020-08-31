//
//  Sidebar.swift
//  Waffles
//
//  Created by Adrien Leloup on 06/07/2020.
//

import SwiftUI

struct Sidebar: View {
    @State private var table: String? = "posts"
    var tables: [Table]
    
    @State private var database = "blog"
    var databases = ["blog", "hiker", "udnf"]
    
    @State private var showAddTable = false
    @State private var tableName = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            VStack(alignment: .leading, spacing: 0) {
                DatabasePicker(selected: database, databases: databases)
                
                Text("TABLES")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.secondary)
                    .padding(.top, 20)
                    .padding(.bottom, 7)
            }
            .padding(.horizontal)
            
            List(tables) { table in
                NavigationLink(destination: Tableview(table: table), tag: table.name, selection: $table) {
                    Image(systemName: "folder")
                    Text(table.name)
                }.contextMenu {
                    Button("Export", action: {})
                    Button("Rename", action: {})
                    Button("Delete", action: {})
                }
            }
            
            Divider()
            
            VStack(alignment: .leading, spacing: 0) {
                if showAddTable {
                    HStack {
                        Image(systemName: "folder")
                        TextField("Enter table name...", text: $tableName).textFieldStyle(PlainTextFieldStyle())
                    }.padding()
                    
                } else {
                    Button("Add table") {
                        showAddTable.toggle()
                    }.buttonStyle(AddButtonStyle())
                }
            }
            
            
        }
        .listStyle(SidebarListStyle())
        .frame(minWidth: 100, idealWidth: 150, maxWidth: 200, maxHeight: .infinity)
    }
}
