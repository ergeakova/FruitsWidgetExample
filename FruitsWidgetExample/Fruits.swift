//
//  Fruits.swift
//  FruitsWidgetExample
//
//  Created by Erge Gevher Akova on 6.07.2022.
//

import Foundation

struct Fruits : Identifiable, Codable{
    
    var id: String {image}
    let image: String
    let name: String
    let Calorie: String
}

let apple = Fruits(image: "apple", name: "apple", Calorie: "52,1 kcal")
let bananas = Fruits(image: "bananas", name: "bananas", Calorie: "88,7 kcal")
let lemon = Fruits(image: "lemon", name: "lemon", Calorie: "28,9 kcal")
let strawberry = Fruits(image: "strawberry", name: "strawberry", Calorie: "32,5 kcal")
