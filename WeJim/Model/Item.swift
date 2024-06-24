//
//  Food.swift
//  WeJim
//
//  Created by Aiden Barnard on 6/22/24.
//

import Foundation
import SwiftUI

struct Item {
    var category: String
    var name: String
    var isFavorite: Bool
    
    //private var imageName: String = { return name.lowercased() } not necessary. Maybe it would be if importing JSON stuff
    var image: Image {
        Image(name.lowercased().replacingOccurrences(of: " ", with: ""))
    }
}

//Here is a list of Items for food
var foods = [
    Item(category: "Food", name: "Burger", isFavorite: false),
    Item(category: "Food", name: "Nuggets", isFavorite: false),
    Item(category: "Food", name: "Pasta", isFavorite: false),
    Item(category: "Food", name: "Pizza", isFavorite: false),
    Item(category: "Food", name: "Pozole", isFavorite: false),
    Item(category: "Food", name: "Steak", isFavorite: false),
    Item(category: "Food", name: "Taco", isFavorite: true)
]


var alcBevs = [
    Item(category: "Cocktails", name: "Mojito", isFavorite: true),
    Item(category: "Cocktails", name: "Paloma", isFavorite: false),
    Item(category: "Cocktails", name: "Carajillo", isFavorite: true),
    Item(category: "Cocktails", name: "Michelada", isFavorite: false)
]

var bevs = [
    Item(category: "Beverage", name: "Arnold Palmer", isFavorite: true),
    Item(category: "Beverage", name: "Protein Shake", isFavorite: false),
    Item(category: "Beverage", name: "CreaTEAne", isFavorite: true),
]
