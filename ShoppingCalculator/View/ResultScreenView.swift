//
//  ResultScreenView.swift
//  ShoppingCalculator
//
//  Created by Hugo Santos on 10/01/24.
//

import SwiftUI

struct ResultScreenView: View {
    let mainResult: String
    let currentComputation: String

    var body: some View {
        VStack(spacing: 10) {
            HStack {
                ScrollView {
                    Spacer()
                    Text(currentComputation)
                        .foregroundColor(grayForegroundColor)
                        .font(.body)
                        .lineLimit(1)
                }
            }
            .minimumScaleFactor(0.1)

            HStack {
                Spacer()
                Text(mainResult)
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .lineLimit(1)
            }
            .minimumScaleFactor(0.1)
        }
        .padding(.horizontal)
        .frame(idealWidth: .infinity, minHeight: UIScreen.main.bounds.height / 4)
        .background(greenForegroundColor)
        .cornerRadius(10)
    }
}
