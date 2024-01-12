//
//  ButtonView.swift
//  ShoppingCalculator
//
//  Created by Hugo Santos on 09/01/24.
//

import SwiftUI

struct ButtonView: View {
    let calculatorButton: CalculatorButton
    let fgColor: Color
    let bgColor: Color

    var systemImage: String? {
        let value = calculatorButton.rawValue
        return value.contains("Icon") ? value.replacingOccurrences(of: "Icon", with: "") : nil
    }

    var text: String? {
        let value = calculatorButton.rawValue
        return value.contains("Icon") ? nil : value
    }

    let buttonDimension: CGFloat = UIScreen.main.bounds.width / 5

    var body: some View {
        ZStack {
            Text(text ?? "")
            Image(systemName: systemImage ?? "")
        }
        .font(.title2)
        .fontWeight(.semibold)
        .frame(maxWidth: calculatorButton.rawValue == "0" ? .infinity : buttonDimension)
        .frame(height: buttonDimension)
        .foregroundColor(fgColor)
        .background(bgColor)
        .clipShape(RoundedRectangle(cornerRadius: 25))
        .shadow(color: bgColor.opacity(0.5), radius: 2, x: 5, y: 5)
    }
}
