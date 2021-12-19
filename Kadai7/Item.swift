//
//  ColorAndOperators.swift
//  Kadai7
//
//  Created by mana on 2021/12/19.
//

import Foundation
import SwiftUI

enum Item {
    case item1
    case item2

    var control: (Color, Bool) {
        switch self {
        case .item1:
            return (Color.pink, true)
        case .item2:
            return (Color.green, false)
        }
    }
}
