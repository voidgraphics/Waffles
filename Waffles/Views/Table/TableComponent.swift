//
//  Table.swift
//  Waffles
//
//  Created by Adrien Leloup on 08/07/2020.
//

import SwiftUI

struct TableComponent<Content> : View where Content : View {
    var columns: Array<String>
    var rows: [[String: Any]]
    var cell: (_ column: String, _ row: Int, _ value: Any?) -> Content
    var rowPadding: CGFloat = 8
    var maxColumnWidth: CGFloat = 250
    
    public init(columns: Array<String>, rows: [[String: Any]], rowPadding: CGFloat, @ViewBuilder cell: @escaping (_ column: String, _ row: Int, _ value: Any?) -> Content) {
        self.columns = columns
        self.rows = rows
        self.cell = cell
        self.rowPadding = rowPadding
    }
    
    var body: some View {
        HStack(alignment: .top) {
            ForEach(columns, id: \.self) { column in
                VStack(alignment: .leading) {
                    Text(column)
                        .fontWeight(.semibold)
                        .padding(.vertical, rowPadding)
                        .lineLimit(1)
                    
                    ForEach(0 ..< rows.count, id: \.self) { rowIndex in
                        let row = rows[rowIndex]
                        cell(column, rowIndex, row[column])
                            .padding(.vertical, rowPadding)
                            .lineLimit(1)
                    }
                }
            }
        }.padding()
    }
}
