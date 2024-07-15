//
//  GenRecipeResult.swift
//  Prepr
//
//  Created by Aiden Barnard on 7/13/24.
//

import SwiftUI

struct GenRecipeResult: View {
    
    var completionResult : String
    private let ingredientsDict: [String: String]
    
    init(completionResult: String) {
        self.completionResult = completionResult
        self.ingredientsDict = parseIngredients(completionResult)
    }
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(LinearGradient(
                //Colors below will eventually be set variables in an aray. This will be used to set gradient based on start/end days. For now, it is random.
                colors: gradientArray.randomElement() ?? [.blue, .green],
                startPoint: .topLeading,
                endPoint: .bottomTrailing))
            .frame(height: 180)
            .overlay {
                VStack(alignment: .leading, spacing: 10) {
                    HStack(spacing: 30) {
                        Text("Generated Recipe")
                            .font(.headline)
                        Spacer()
                        Image(systemName: "atom")
                    }
                    Divider()
                        .frame(height: 3)
                        .background(.black)
                        .cornerRadius(5) //THIS WILL BE DEPRECATED SOON. FIND A NEW WAY TO DO THIS.
                    Text("Ingredients:")
                        .font(.title2)
                    Text(ingredientsDict.keys.joined(separator: ", "))
                        .font(.caption)
                }
                .padding()
            }
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
    
    GenRecipeResult(completionResult: ingredientsString)
}
