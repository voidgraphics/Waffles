//
//  TableCell.swift
//  Waffles
//
//  Created by Adrien Leloup on 15/07/2020.
//

import SwiftUI

struct TableCell<Content: View>: View {
    let column: String
    let row: [String: Any?]
    let rowPadding: CGFloat
    let cell: Content
    
    var body: some View {
        HStack(spacing: 0) {
            cell
            Spacer()
        }
        .padding(.vertical, rowPadding)
        .padding(.leading)
        .frame(width: 120)
        .lineLimit(1)
    }
}
