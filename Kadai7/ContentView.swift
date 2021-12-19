//
//  ContentView.swift
//  Kadai7
//
//  Created by mana on 2021/12/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ItemView(item: .item1)
                .tabItem({Text("Item1")})

            ItemView(item: .item2)
                .tabItem({Text("Item2")})
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
