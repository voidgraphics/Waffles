//
//  SidebarDropdownButtonStyle.swift
//  Waffles
//
//  Created by Adrien Leloup on 12/07/2020.
//

import SwiftUI

struct SidebarDropdownButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        HStack {
            Spacer()
            configuration.label
                .foregroundColor(.primary)
            Spacer()
            Image(systemName: "chevron.down")
                .foregroundColor(.secondary)
                .font(.footnote)
            Spacer().frame(width: 3)
        }
        .padding(5)
        .background(
            RoundedRectangle(cornerRadius: 5, style: .continuous)
                .fill(Color.secondary.opacity(configuration.isPressed ? 0.2 : 0.3))
        )
    }
}
