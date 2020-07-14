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
        VStack(alignment: .leading, spacing: 0) {
            HStack(spacing: 0) {
                ForEach(columns, id: \.self) { column in
                    
                    HStack {
                        Text(column)
                            .padding(.vertical, rowPadding)
                            .padding(.horizontal)
                            .lineLimit(1)
                            
                        Spacer()
                        if column == columns[0] {
                            Image(systemName: "chevron.down")
                                .font(.footnote)
                                .foregroundColor(.secondary)
                        }
                        Divider().frame(height: 32)
                    }.frame(width: 120).background(Color.secondary.opacity(0.1))
                    
                }
            }
             
            ScrollView {
                ForEach(0 ..< rows.count, id: \.self) { rowIndex in
                    let row = rows[rowIndex]
                    
                    HStack(spacing: 0) {
                        ForEach(columns, id: \.self) { column in
                            HStack {
                                cell(column, rowIndex, row[column])
                                    .lineLimit(1)
                                Spacer()
                            }
                            .padding(.vertical, rowPadding)
                            .padding(.leading)
                            .frame(width: 120)
                        }
                    }.background(Color.secondary.opacity(rowIndex % 2 == 0 ? 0.0001 : 0.1))
                }
            }
        }
    }
}
