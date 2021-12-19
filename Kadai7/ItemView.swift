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
    let item: Item

    var body: some View {
        ZStack {
            item.control.0
                .ignoresSafeArea(edges: .top)

            VStack(spacing: 50) {
                NumberField(number: $topNumber)

                NumberField(number: $bottomNumber)

                Button(action: {
                    calculation()
                    closeKeyboard()
                }, label: {Text("Button")})

                Text("\(answer)")
                    .foregroundColor(.black)
            }
        }
    }

    private func calculation() {
        let topNumber = topNumber ?? 0
        let bottomNumber = bottomNumber ?? 0
        answer = topNumber + (item.control.1 ? bottomNumber : -bottomNumber)
    }

    private func closeKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(item: .item1)
    }
}
