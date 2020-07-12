//
//  AddButtonStyle.swift
//  Waffles
//
//  Created by Adrien Leloup on 12/07/2020.
//

import SwiftUI

struct AddButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        HStack {
            Image(systemName: "plus.circle")
            configuration.label.foregroundColor(.primary)
            Spacer()
        }
        .padding()
        .background(Color.secondary.opacity(configuration.isPressed ? 0.2 : 0.0001))
    }
}
