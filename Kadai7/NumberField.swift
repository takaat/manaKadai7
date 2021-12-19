//
//  NumberField.swift
//  Kadai7
//
//  Created by mana on 2021/12/19.
//

import SwiftUI

struct NumberField: View {
    @Binding var number: Int?

    var body: some View {
        TextField("", value: $number, format: .number, prompt: nil)
            .frame(width: 150, height: 50)
            .border(.secondary)
            .foregroundColor(.black)
            .background(.white)
            .keyboardType(.numbersAndPunctuation)
    }
}

struct NumberField_Previews: PreviewProvider {
    static var previews: some View {
        NumberField(number: .constant(2))
    }
}
