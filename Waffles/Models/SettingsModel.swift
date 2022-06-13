//
//  Settings.swift
//  Waffles
//
//  Created by Adrien Leloup on 10/07/2020.
//

import Foundation
import SwiftUI

class SettingsModel: ObservableObject {
    @Published var tableRowPadding : CGFloat = 4
    @Published var colorScheme: ColorScheme = .dark
}
