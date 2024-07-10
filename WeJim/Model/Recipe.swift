//
//  Recipe.swift
//  WeJim
//
//  Created by Aiden Barnard on 7/10/24.
//

import Foundation

struct Recipe {
    var item: Item
    var ingredients: Array<String>
    var isQueued: Bool
    
    var startQueue: String
    var endQueue: String
    //These last two variables are placeholders for a date range I want to implement down the road. This saves a lot of pain for now 🙂
}

//Lets say you go and generate a recipe from a given item you clicked on in SearchView()
//You like it? Save it ✅ (This goes to an array of savedRecipes
//Want to meal prep it? Queue it ✅
//You can pick a range from a calendar to queue successfully
//Ingredients should appear in GroceryListView where you can check off anything you may need

var savedRecipes: [Recipe] = [
    Recipe(item: foods[0], ingredients: ["Flavour", "Zestiness", "Yum Sauce"], isQueued: true, startQueue: "Monday", endQueue: "Friday"),
    Recipe(item: foods[1], ingredients: ["Tajin", "Peppa", "Saltt"], isQueued: true, startQueue: "Monday", endQueue: "Friday"),
    Recipe(item: foods[2], ingredients: ["Flavour", "Yum Sauce", "Peppa"], isQueued: true, startQueue: "Monday", endQueue: "Friday"),
    Recipe(item: foods[3], ingredients: ["Zestiness", "Tajin", "Saltt"], isQueued: true, startQueue: "Monday", endQueue: "Friday"),
    //Temporary meaningless separation
    Recipe(item: foods[4], ingredients: ["Flavour", "Zestiness", "Yum Sauce", "Tajin", "Peppa", "Saltt"], isQueued: false, startQueue: "Monday", endQueue: "Friday"),
    Recipe(item: foods[5], ingredients: ["Flavour", "Zestiness", "Yum Sauce", "Tajin", "Peppa", "Saltt"], isQueued: false, startQueue: "Monday", endQueue: "Friday"),
    Recipe(item: foods[6], ingredients: ["Flavour", "Zestiness", "Yum Sauce", "Tajin", "Peppa", "Saltt"], isQueued: false, startQueue: "Monday", endQueue: "Friday"),
]
