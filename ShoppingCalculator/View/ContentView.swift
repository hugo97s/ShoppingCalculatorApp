//
//  ContentView.swift
//  ShoppingCalculator
//
//  Created by Hugo Santos on 08/01/24.
//

import SwiftUI

struct ContentView: View {
    @State var currentComputation: String = UserDefaults.standard.string(forKey: "currentComputationKey") ?? ""
    @State var mainResult: String = UserDefaults.standard.string(forKey: "mainResultKey") ?? "0"

    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            VStack {
                Spacer()
                ResultScreenView(mainResult: mainResult, currentComputation: currentComputation)
                    .padding(.horizontal)
                Spacer()
                KeyboardCalculatorView(mainResult: $mainResult, currentComputation: $currentComputation)
            }
            .padding()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
