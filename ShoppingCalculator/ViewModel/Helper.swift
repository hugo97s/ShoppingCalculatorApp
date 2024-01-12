//
//  Helper.swift
//  ShoppingCalculator
//
//  Created by Hugo Santos on 10/01/24.
//

import Foundation

func getLastCharacter(from str: String) -> String {
    return str.last.map { String($0) } ?? ""
}

func lastCharacterIsEqualTo(_ str: String, _ character: String) -> Bool {
    return getLastCharacter(from: str) == character
}

func formatResult(_ val: Double) -> String {
    let numberFormatter = NumberFormatter()
    numberFormatter.numberStyle = .decimal
    numberFormatter.maximumFractionDigits = 16
    return numberFormatter.string(from: NSNumber(value: val)) ?? "0"
}

func lastCharacterIsDigit(_ str: String) -> Bool {
    return str.last?.isNumber ?? false
}

func lastCharacterIsDigitOrPercent(_ str: String) -> Bool {
    return str.last?.isNumber ?? false || getLastCharacter(from: str) == "%"
}

func lastCharacterIsOperator(_ str: String) -> Bool {
    return textOp.contains(getLastCharacter(from: str))
}
