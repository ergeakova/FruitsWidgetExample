//
//  Fruits.swift
//  FruitsWidgetExample
//
//  Created by Erge Gevher Akova on 6.07.2022.
//

import Foundation

struct Fruit: Identifiable, Codable{
    
    var id: String {image}
    let image: String
    let name: String
    let Calorie: String
}

let apple = Fruit(image: "apple", name: "Apple", Calorie: "52,1 kcal")
let bananas = Fruit(image: "bananas", name: "Bananas", Calorie: "88,7 kcal")
let lemon = Fruit(image: "lemon", name: "Lemon", Calorie: "28,9 kcal")
let strawberry = Fruit(image: "strawberry", name: "Strawberry", Calorie: "32,5 kcal")
