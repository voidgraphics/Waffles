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
            TableComponent(columns: table.columns, rows: table.rows) { column, row, value in
                if let cell = value as? String {
                    Text(cell)
                }
            }
            
            Spacer()
        }
        .background(Color.white)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .navigationTitle(table.name)
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
