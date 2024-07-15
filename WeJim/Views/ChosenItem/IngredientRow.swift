//
//  IngredientRow.swift
//  Prepr
//
//  Created by Aiden Barnard on 7/14/24.
//

import SwiftUI

struct IngredientRow: View {
    var completionResult : String
    private let ingredientsDict: [String: String]
    
    init(completionResult: String) {
        self.completionResult = completionResult
        self.ingredientsDict = parseIngredients(completionResult)
        print(ingredientsDict)
    }
    
    var body: some View {
        TabView {
            ForEach(ingredientsDict.keys.sorted(), id: \.self) { key in
                IngredientItem(quantity: Double(ingredientsDict[key]!) ?? 0.0, ingredient: key)
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    let ingredientsString = """
    Ingredients:
    - 3/4 tsp Salt
    - 3/4 tsp Honey
    - 2 gallons Water
    - 5 tbsp Paprika
    - 3 pinches Garlic Powder
    """
    IngredientRow(completionResult: ingredientsString)
}
