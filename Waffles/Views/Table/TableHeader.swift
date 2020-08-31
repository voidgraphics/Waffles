//
//  TableHeader.swift
//  Waffles
//
//  Created by Adrien Leloup on 31/08/2020.
//

import SwiftUI

struct TableHeader: View {
    let columns: [String]
    let layout: [GridItem]
    let rowPadding: CGFloat
    
    var body: some View {
        LazyVGrid(columns: layout, alignment: .leading) {
            ForEach(columns, id: \.self) { column in
                HStack(spacing: 0) {
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
    }
}
