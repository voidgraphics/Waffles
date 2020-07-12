//
//  DatabaseSelector.swift
//  Waffles
//
//  Created by Adrien Leloup on 12/07/2020.
//

import SwiftUI

struct DatabasePickerMenu: View {
    @State private var search = ""
    var selected: String
    var databases: [String]
    @State private var label = "Add database"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            TextField("Search databases...", text: $search)
                .textFieldStyle(PlainTextFieldStyle())
                .padding()
        
            
            ScrollView(.vertical) {
                VStack {
                    ForEach(databases, id: \.self) { database in
                        HStack {
                            Button(action: { }) {
                                HStack {
                                    Image(systemName: "internaldrive")
                                    Text(database)
                                    Spacer()
                                }.background(Color.secondary.opacity(0.001))
                            }
                            Button(action: {}) {
                                Image(systemName: "pencil")
                            }
                        }
                        
                        .buttonStyle(PlainButtonStyle())
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity)
                    }
                }.padding(.bottom)
            }.frame(maxHeight: 300)

            
            Divider()
            
            VStack {
                Button(label) {
                    
                }
                .buttonStyle(AddButtonStyle())
            }
        }
        .frame(width: 200)
        .listStyle(SidebarListStyle())
    }
}
