//
//  RecipeTile.swift
//  WeJim
//
//  Created by Aiden Barnard on 7/7/24.
//
//I want a gradient based on the days of the week the recipe starts and ends

import SwiftUI

struct RecipeTile: View {
    var recipe: Recipe
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(LinearGradient(
                //Colors below will eventually be set variables in an aray. This will be used to set gradient based on start/end days. For now, it is random.
                colors: gradientArray.randomElement() ?? [.blue, .green],
                startPoint: .topLeading,
                endPoint: .bottomTrailing))
            .frame(width: .infinity, height: 160)
            .overlay {
                VStack(alignment: .leading, spacing: 10) {
                    
                    HStack(spacing: 30) {
                        Text("\(recipe.startQueue) – \(recipe.endQueue)") //Eventually want to look like this: Tue 11 – Fri 27
                        Spacer()
                        Image(systemName: "fork.knife")
                    }
                    Text(recipe.item.name)
                        .font(.system(size: 36, weight: .bold, design: .rounded))
                    //Might make an ingredient array to display ingredients through iteration
                    Text(recipe.ingredients.joined(separator: ", "))
                        .font(.footnote)
                    
                }
                .padding(.horizontal)
            }
    }
}

#Preview {
    RecipeTile(recipe: savedRecipes[0])
}
