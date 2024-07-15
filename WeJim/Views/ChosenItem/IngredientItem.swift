//
//  IngredientView.swift
//  Prepr
//
//  Created by Aiden Barnard on 7/14/24.
//

import SwiftUI

struct IngredientItem: View {
    
    var quantity: Double
    var ingredient: String
    
    init(quantity: Double, ingredient: String) {
        self.quantity = (quantity * 100).rounded() / 100
        self.ingredient = ingredient
    }
    var body: some View {
        TabView {
            VStack(spacing: 20) {
                Text(ingredient)
                    .font(.system(size: 50, weight: .bold))
                    .fontDesign(.rounded)
                Text("Quantity: \((quantity * 100).rounded() / 100)")
                    .font(.system(size: 20, weight: .light))
                    .fontDesign(.rounded)
            }
        }
    }
}

#Preview {
    IngredientItem(quantity: 5, ingredient: "Serranos (each)")
}
