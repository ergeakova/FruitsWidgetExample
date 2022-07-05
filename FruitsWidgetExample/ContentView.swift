//
//  ContentView.swift
//  FruitsWidgetExample
//
//  Created by Erge Gevher Akova on 6.07.2022.
//

import SwiftUI

struct ContentView: View {
    let fruitsArray = [apple, bananas, lemon, strawberry]
    var body: some View {
        VStack{
            ForEach(fruitsArray){ fruit in
                FruitView(fruit: fruit)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
