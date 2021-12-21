//
//  ItemView.swift
//  Kadai7
//
//  Created by mana on 2021/12/19.
//

import SwiftUI

struct ItemView: View {
    @State private var topNumber: Int?
    @State private var bottomNumber: Int?
    @State private var answer: Int = 0
    let color: Color
    let calculation: (Int, Int) -> Int

    var body: some View {
        ZStack {
            color
                .ignoresSafeArea(edges: .top)

            VStack(spacing: 50) {
                NumberField(number: $topNumber)

                NumberField(number: $bottomNumber)

                Button(action: {
                    calculate()
                    closeKeyboard()
                }, label: {Text("Button")})

                Text("\(answer)")
                    .foregroundColor(.black)
            }
        }
    }

    private func calculate() {
        let topNumber = topNumber ?? 0
        let bottomNumber = bottomNumber ?? 0
        answer = calculation(topNumber, bottomNumber)
    }

    private func closeKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(color: .pink, calculation: +)
    }
}
