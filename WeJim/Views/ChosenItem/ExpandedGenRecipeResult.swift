//
//  ExpandedGenRecipeResult.swift
//  Prepr
//
//  Created by Aiden Barnard on 7/14/24.
//

import SwiftUI

struct ExpandedGenRecipeResult: View {
    
    var item: Item
    var completionResult: String
    
    var body: some View {
        
        ZStack {
            item.image
                .resizable()
                .ignoresSafeArea()
                .blur(radius: 40)
                .padding(.bottom)

            RoundedRectangle(cornerRadius: 20)
                .fill(LinearGradient(
                    //Colors below will eventually be set variables in an aray. This will be used to set gradient based on start/end days. For now, it is random.
                    colors: gradientArray.randomElement() ?? [.blue, .green],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing))
                .shadow(radius: 10)
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
                        Text(item.name)
                            .font(.headline)
                        Spacer()
                        
                        
                        IngredientRow(completionResult: completionResult)
                        
                        
                        Spacer()
                        HStack {
                            Spacer()
                            Button("Add to Library") {
                            
                            }
                            .buttonStyle(.bordered)
                            .tint(.black)
                            .foregroundStyle(.white)
                            Spacer()
                        }
                    }
                    .padding()
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
    ExpandedGenRecipeResult(item: foods[0], completionResult: ingredientsString)
}
