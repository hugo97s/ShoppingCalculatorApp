////
////  KeyboardCalculatorViewModel.swift
////  ShoppingCalculator
////
////  Created by Hugo Santos on 11/01/24.
////
//
//import Foundation
//
////protocol KeyboardCalculatorViewModelProtocol {
////    func clearResult()
////    func performOperation()
////}
//
//final class KeyboardCalculatorViewModel: ObservableObject {
//    @Published var currentComputation: String = ""
//    @Published var mainResult: String = "0"
//
//    func buttonPressed(calculatorButton: CalculatorButton) {
//        switch calculatorButton {
//        case .clear:
//            currentComputation = ""
//            mainResult = "0"
//
//        case .negative:
//            if !currentComputation.isEmpty {
//                if !lastCharacterIsOperator(currentComputation) {
//                    let sign = calculatorButton == .negative ? -1.0 : 1.0
//
//                    if let result = calculateResults() {
//                        mainResult = formatResult(sign * result)
//                        currentComputation = mainResult
//                    }
//
//                }
//            }
//        case .equal:
//            if !currentComputation.isEmpty {
//                if !lastCharacterIsOperator(currentComputation) {
//                    let sign = calculatorButton == .negative ? -1.0 : 1.0
//                    if let result = calculateResults() {
//                        mainResult = formatResult(sign * result)
//                    }
//
//
//                }
//
//                UserDefaults.standard.set(mainResult, forKey: "mainResultKey")
//                UserDefaults.standard.set(currentComputation, forKey: "currentComputationKey")
//                // colocar numa camada de serviço
//            }
//        case .decimal:
//            if let lastOccurenceOfDecimal = currentComputation.lastIndex(of: ".") {
//                if lastCharacterIsDigit(currentComputation) {
//                    let startIndex = currentComputation.index(lastOccurenceOfDecimal, offsetBy: 1)
//                    let endIndex = currentComputation.endIndex
//                    let rangeOfValues = startIndex..<endIndex
//                    let rightSubstring = String(currentComputation[rangeOfValues])
//
//                    if Int(rightSubstring) == nil && !rightSubstring.isEmpty {
//                        currentComputation += "."
//                    }
//                }
//            } else {
//                if currentComputation.isEmpty {
//                    currentComputation += "0."
//                } else if lastCharacterIsDigit(currentComputation){
//                    currentComputation += "0."
//                }
//            }
//
//        case .percent:
//            if lastCharacterIsDigit(currentComputation) {
//                appendToCurrentComputation(calculatorButton: calculatorButton)
//            }
//
//        case .add, .subtract, .divide, .multiply:
//            if lastCharacterIsDigitOrPercent(currentComputation) {
//                appendToCurrentComputation(calculatorButton: calculatorButton)
//            }
//
//        default:
//            currentComputation += calculatorButton.rawValue
//        }
//    }
//
//    func appendToCurrentComputation(calculatorButton: CalculatorButton) {
//        currentComputation += calculatorButton.rawValue
//    }
//
//    func calculateResults() -> Double? {
//        let visibleWorking: String = currentComputation
//        var working = visibleWorking.replacingOccurrences(of: "%", with: "*0.01")
//
//        working = working.replacingOccurrences(of: multiplySymbol, with: "*")
//        working = working.replacingOccurrences(of: divisionSymbol, with: "/")
//        if getLastCharacter(from: visibleWorking) == "." {
//            working += "0"
//        }
//
//        let express = NSExpression(format: working)
//
//        if let expressVal = express.expressionValue(with: nil, context: nil) as? Double {
//            return expressVal
//        } else {
//            print("Expression value could not be converted to Double.")
//            return nil
//        }
//    }
//
//}
