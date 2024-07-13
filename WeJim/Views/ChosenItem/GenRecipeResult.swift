//
//  GenRecipeResult.swift
//  Prepr
//
//  Created by Aiden Barnard on 7/13/24.
//

import SwiftUI

struct GenRecipeResult: View {
    private let gradientArray = [
        [Color(red: 40/255, green: 40/255, blue: 200/255), Color(red: 255/255, green: 80/255, blue: 255/255)], //Indigo/Fuscia
        [Color(red: 0.992, green: 0.788, blue: 0.365), Color(red: 0.941, green: 0.431, blue: 0.576)], //Sunset
        [Color(red: 0.0, green: 0.509, blue: 0.745), Color(red: 0.0, green: 0.745, blue: 0.824)], //Ocean
        [Color(red: 0.667, green: 0.933, blue: 0.824), Color(red: 0.196, green: 0.8, blue: 0.6)], //Mint
        [Color(red: 1.000, green: 0.922, blue: 0.231), Color(red: 0.984, green: 0.541, blue: 0.008)], // Sunrise
        [Color(red: 0.729, green: 0.333, blue: 0.827), Color(red: 0.333, green: 0.827, blue: 0.678)], // Purple Haze
        [Color(red: 0.071, green: 0.867, blue: 0.698), Color(red: 0.867, green: 0.510, blue: 0.710)], // Fresh Mint
        [Color(red: 0.529, green: 0.808, blue: 0.922), Color(red: 0.275, green: 0.510, blue: 0.706)], // Sky
        [Color(red: 0.933, green: 0.776, blue: 0.416), Color(red: 0.933, green: 0.416, blue: 0.776)], // Candy
        [Color(red: 0.804, green: 0.310, blue: 0.706), Color(red: 0.255, green: 0.788, blue: 0.678)], // Wild Berry
        [Color(red: 0.867, green: 0.498, blue: 0.314), Color(red: 0.314, green: 0.867, blue: 0.498)], // Autumn
        [Color(red: 0.345, green: 0.678, blue: 0.839), Color(red: 0.678, green: 0.345, blue: 0.839)], // Twilight
    ]
    
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
            .frame(width: .infinity, height: 180)
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
                .padding(.horizontal)
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
