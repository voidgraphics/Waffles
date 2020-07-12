//
//  Tableview.swift
//  Waffles
//
//  Created by Adrien Leloup on 06/07/2020.
//

import SwiftUI

struct Tableview: View {
    @EnvironmentObject var settings: SettingsModel
    var table: Table
    
    var body: some View {
        ScrollView(.horizontal) {
            TableComponent(columns: table.columns, rows: table.rows, rowPadding: settings.tableRowPadding) { column, row, value in
                if let cell = value as? String {
                    Text(cell)
                }
            }

            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .navigationTitle(table.name)
        .navigationSubtitle("\(table.rows.count) rows")
        .toolbar {
            ToolbarItem(placement: .status) {
                Button(action: {}) {
                    Image(systemName: "square.and.arrow.up")
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
