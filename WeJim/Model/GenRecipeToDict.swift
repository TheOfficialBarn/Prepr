//
//  GenRecipeToDict.swift
//  Prepr
//
//  Created by Aiden Barnard on 7/13/24.
//
//  AI assisted code (ChatGPT 4o)
//
//  The goal of this program is to turn a string of ingredients into a value Dictionary that is scalable by an optional factor

import Foundation

func parseFraction(_ fraction: String) -> Double? {
    let parts = fraction.split(separator: "/")
    if parts.count == 2 {
        if let numerator = Double(parts[0]), let denominator = Double(parts[1]) {
            return numerator / denominator
        }
    }
    return nil
}

//First, parseIngredients is called to turn a String into a Dictionary -> String: String
func parseIngredients(_ input: String) -> [String: String] {
    var ingredientsDict = [String: String]() // This is the dictionary that will be used
    
    let lines = input.split(separator: "\n") //This turns the string into an array split by \n.
    for line in lines { //Iterates over the lines array
        if line.starts(with: "-") { //If the first value of the line string begins with a dash below runs, else nothing happens
            let parts = line.dropFirst(2).split(separator: " ", maxSplits: 2) //dropFirst(2) ignores first two characters. A new array is then created split by a space [quantity, unit, ingredient]. Max split allows for the ingredient to be multiple words.
            if parts.count == 3 { //This ensures that there are only three elements in array
                let quantityPart = String(parts[0]) //The quantity is first element of parts array
                let unit = String(parts[1]) //The unit is second element of parts array
                let ingredient = String(parts[2]) //The ingredient is third element of parts array
                
                let quantity: Double //You want the quantity to be a double number, not a string. This begins that process. It shouldn't change for the lifespan of recipe, so it is constant.
                if let fractionValue = parseFraction(quantityPart) { //If fractionValue isn't nil it is a created variable that runs the code below.
                    quantity = fractionValue
                } else if let doubleValue = Double(quantityPart) { //Else the quanityPart (String) gets turned directly into quantity (Double)
                    quantity = doubleValue
                } else {
                    quantity = 0.0 // default value for non-numeric quantities
                }
                
                ingredientsDict["\(ingredient) (\(unit))"] = "\(quantity)" //This adds ingredients to the dictionary
            }
        }
    }
    
    return ingredientsDict //Dict is returned
}

func adjustQuantities(_ ingredients: [String: String], factor: Double) -> [String: String] {
    var adjustedIngredients = [String: String]()
    
    for (ingredient, quantity) in ingredients {
        if let quantityValue = Double(quantity) {
            let adjustedQuantity = quantityValue * factor
            adjustedIngredients[ingredient] = "\(adjustedQuantity)"
        } else {
            adjustedIngredients[ingredient] = quantity
        }
    }
    
    return adjustedIngredients
}


/*  ➡️ USAGE BELOW ⬅️
let ingredientsDict = parseIngredients(ingredientsString)
print("Original Ingredients: \(ingredientsDict)")

let factor = 2.0 // Example: Double the recipe
let adjustedIngredientsDict = adjustQuantities(ingredientsDict, factor: factor)
print("Adjusted Ingredients: \(adjustedIngredientsDict)")
*/

