//
//  Table.swift
//  Waffles
//
//  Created by Adrien Leloup on 08/07/2020.
//

import SwiftUI

struct TableComponent<Content: View>: View {
    var columns: Array<String>
    var rows: [[String: Any]]
    var cell: (_ column: String, _ row: Int, _ value: Any?) -> Content
    var rowPadding: CGFloat = 5
    var maxColumnWidth: CGFloat = 250
    
    public init(columns: Array<String>, rows: [[String: Any]], rowPadding: CGFloat, @ViewBuilder cell: @escaping (_ column: String, _ row: Int, _ value: Any?) -> Content) {
        self.columns = columns
        self.rows = rows
        self.cell = cell
        self.rowPadding = rowPadding
    }
    
    let layout = [
        GridItem(.flexible(minimum: 112)),
        GridItem(.fixed(112)),
        GridItem(.fixed(112)),
        GridItem(.fixed(112)),
        GridItem(.fixed(112)),
        GridItem(.fixed(112)),
        GridItem(.fixed(112))
    ]
    
    var body: some View {
        LazyVGrid(columns: layout, alignment: .leading, spacing: 0, pinnedViews: .sectionHeaders) {
            Section(header: TableHeader(columns: columns, layout: layout, rowPadding: rowPadding)) {
                ForEach(columns, id: \.self) { column in
                    VStack(alignment: .leading, spacing: 0) {
                        ForEach(0 ..< rows.count, id: \.self) { rowIndex in
                            let row = rows[rowIndex]
                            TableCell(column: column, row: row, rowPadding: rowPadding, cell: cell(column, rowIndex, row[column]))
                                .id("row-\(column)-\(rowIndex)")
                                .background(Color.secondary.opacity(rowIndex % 2 == 0 ? 0.0001 : 0.05))
                        }
                    }
                }
            }
        }
            

            // Rows
//            ForEach(0 ..< rows.count, id: \.self) { rowIndex in
//                let row = rows[rowIndex]
//
//                LazyVGrid(columns: layout) {
//                    ForEach(columns, id: \.self) { column in
//                        // Make TableCell instance here instead
//                        TableCell(column: column, row: row, rowPadding: rowPadding, cell: cell(column, rowIndex, row[column])).frame(minHeight: 600)
//                    }
//                }.background(Color.secondary.opacity(rowIndex % 2 == 0 ? 0.0001 : 0.1))
//            }
        
        
        
        
//        VStack(alignment: .leading, spacing: 0) {
//            HStack(spacing: 0) {
//                ForEach(columns, id: \.self) { column in
//
//                    HStack {
//                        Text(column)
//                            .padding(.vertical, rowPadding)
//                            .padding(.horizontal)
//                            .lineLimit(1)
//
//                        Spacer()
//                        if column == columns[0] {
//                            Image(systemName: "chevron.down")
//                                .font(.footnote)
//                                .foregroundColor(.secondary)
//                        }
//                        Divider().frame(height: 32)
//                    }.frame(width: 120).background(Color.secondary.opacity(0.1))
//
//                }
//            }
//
//
//            List {
//                ForEach(0 ..< rows.count, id: \.self) { rowIndex in
//                    let row = rows[rowIndex]
//
//                    HStack(spacing: 0) {
//                        ForEach(columns, id: \.self) { column in
//                            TableCell(column: column, row: row, rowPadding: rowPadding, cell: cell(column, rowIndex, row[column]))
//                        }
//                    }.background(Color.secondary.opacity(rowIndex % 2 == 0 ? 0.0001 : 0.1))
//                }
//            }
//
//
//        }
    }
}
