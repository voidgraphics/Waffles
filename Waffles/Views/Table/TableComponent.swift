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
    var rowPadding: CGFloat = 8
    var colWidth: CGFloat = 200
    var cell: (_ column: String, _ row: Int, _ value: Any?) -> Content
    
    public init(columns: Array<String>, rows: [[String: Any]], @ViewBuilder cell: @escaping (_ column: String, _ row: Int, _ value: Any?) -> Content) {
        self.columns = columns
        self.rows = rows
        self.cell = cell
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                ForEach(columns, id: \.self) { column in
                    Text(column)
                        .fontWeight(.semibold)
                        .padding(.vertical, rowPadding)
                        .frame(width: colWidth, alignment: .bottomLeading)
                        .lineLimit(1)
                }
            }
            
            Divider().padding(0)
            
            ForEach(0 ..< rows.count, id: \.self) { rowIndex in
                let row = rows[rowIndex]
                
                HStack {
                    ForEach(columns, id: \.self) { column in
                        cell(column, rowIndex, row[column]).frame(width: colWidth, alignment: .topLeading)
                    }
                }
                .padding(.vertical, rowPadding)
                
                Divider()
            }
        }.padding()
    }
}
