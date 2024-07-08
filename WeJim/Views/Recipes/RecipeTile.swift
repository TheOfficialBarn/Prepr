//
//  RecipeTile.swift
//  WeJim
//
//  Created by Aiden Barnard on 7/7/24.
//
//I want a gradient based on the days of the week the recipe starts and ends

import SwiftUI

struct RecipeTile: View {
    
    var recipe: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(LinearGradient(colors: [.indigo, .pink], startPoint: .topLeading, endPoint: .bottomTrailing))
            .frame(width: .infinity, height: 160)
            .overlay {
                VStack(alignment: .leading, spacing: 10) {
                    
                    HStack(spacing: 30) {
                        Text(recipe)
                            .font(.system(size: 36, weight: .bold, design: .rounded))
                        
                        Spacer()
                        
                        Text("Sun 7 – Thu 11")
                    }
                    
                    //Might make an ingredient array to display ingredients through iteration
                    Text("Inredients: Penne, Arrabiata, Red Chile Flakes, Ground Beef, Garlic, Rosemary, Thyme, Salt, Pepper, Olive Oil...")
                        .font(.footnote)
                    
                }
                .padding(.horizontal)
            }
    }
}

#Preview {
    RecipeTile(recipe: "Bolognese")
}
