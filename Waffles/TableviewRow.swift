//
//  TableviewRow.swift
//  Waffles
//
//  Created by Adrien Leloup on 06/07/2020.
//

import SwiftUI

struct TableviewRow: View {
    var columns: [String]
    var row: [String: String]
    
    var body: some View {
        HStack {
            ForEach(columns, id: \.self) { column in
                Text(row[column] ?? "default value").frame(width: 200, alignment: .topLeading)
            }
        }
        .padding(.top, 5)
        .padding(.bottom, 5)
    }
}
