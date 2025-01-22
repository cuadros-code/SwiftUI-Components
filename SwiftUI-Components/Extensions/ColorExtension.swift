//
//  ColorExtension.swift
//  SwiftUI-Components
//
//  Created by Kevin Cuadros on 21/01/25.
//

import Foundation
import SwiftUICore

extension Color {
    static func random() -> Color {
        Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
}
