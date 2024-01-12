//
//  ButtonModel.swift
//  ShoppingCalculator
//
//  Created by Hugo Santos on 10/01/24.
//

import SwiftUI

struct ButtonModel: Identifiable {
    let id = UUID()
    let calcButton: CalculatorButton
    var color: Color = foregroundButtonColor
}

struct ButtonsRowModel: Identifiable {
    let id = UUID()
    let row: [ButtonModel]
}
