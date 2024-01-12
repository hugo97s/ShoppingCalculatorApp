//
//  Constants.swift
//  ShoppingCalculator
//
//  Created by Hugo Santos on 09/01/24.
//

import Foundation
import SwiftUI


let backgroundColor = Color("Background")
let buttonBackground = Color("CalculatorButtonsBG")
let greenForegroundColor = Color("Green")
let grayForegroundColor = Color("Gray")
let redForegroundColor = Color("Red")
let foregroundButtonColor = Color("White")
let blueForegroundColor = Color("Blue")


enum Op {
    case add, subtract, divide, multiply, equal, none
}

enum CalculatorButton: String {
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case zero = "0"
    case add = "+"
    case subtract = "-"
    case divide = "÷"
    case multiply = "×"
    case equal = "="
    case clear = "C"
    case decimal = "."
    case percent = "%"
    case negative = "plus.forwardslash.minusIcon"
}

let enumOperators: [CalculatorButton] =
[.subtract, .add, .divide, .multiply]

let multiplySymbol: String = CalculatorButton.multiply.rawValue
let divisionSymbol: String = CalculatorButton.divide.rawValue

let textOp: String = "+-\(multiplySymbol)\(divisionSymbol)"
