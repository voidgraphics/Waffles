//
//  Tableview.swift
//  Waffles
//
//  Created by Adrien Leloup on 06/07/2020.
//

import SwiftUI

struct Tableview: View {
    var table: Table
    
    var body: some View {
        ScrollView(.horizontal) {
            VStack(alignment: .leading) {
                HStack {
                    ForEach(table.columns, id: \.self) { column in
                        Text(column)
                            .fontWeight(.semibold)
                            .frame(width: 200, alignment: .topLeading)
                    }
                }.padding(.bottom, 5)
                
                ForEach(table.rows, id: \.self) { row in
                    TableviewRow(columns: table.columns, row: row)
                }
                
                Spacer()
            }.padding()
        }
        .background(Color.white)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .navigationTitle("blog • \(table.name)")
        .toolbar {
            ToolbarItem(placement: .navigation) {
                Button(action: {}) {
                    Image(systemName: "internaldrive")
                }
            }
        }
    }
}

struct Tableview_Previews: PreviewProvider {
    static var previews: some View {
        Tableview(table: Table(name: "Test table"))
    }
}
