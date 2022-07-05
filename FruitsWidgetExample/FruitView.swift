//
//  FruitView.swift
//  FruitsWidgetExample
//
//  Created by Erge Gevher Akova on 6.07.2022.
//

import SwiftUI

struct FruitView: View {
    let fruit: Fruit
    var body: some View {
        HStack{
            CircularImageView(image: Image(fruit.image))
                .frame(width: UIScreen.main.bounds.width * 0.30, height: UIScreen.main.bounds.width * 0.30, alignment: .center)

            VStack{
                Text(fruit.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.purple)
                
                Text(fruit.Calorie)
                    .foregroundColor(.purple)
                    .fontWeight(.bold)
            }.frame(width: UIScreen.main.bounds.width * 0.5, alignment: .center)
        }.frame(width: UIScreen.main.bounds.width, alignment: .center)
    }
}

struct FruitView_Previews: PreviewProvider {
    static var previews: some View {
        FruitView(fruit: strawberry)
    }
}
