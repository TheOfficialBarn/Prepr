//
//  RecipeTileColumn.swift
//  WeJim
//
//  Created by Aiden Barnard on 7/7/24.
//

import SwiftUI

struct RecipeTileColumn: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            RecipeTile(recipe: "Meal 1")
            RecipeTile(recipe: "Meal 2")
            RecipeTile(recipe: "Meal 3")
            RecipeTile(recipe: "Meal 4")
            RecipeTile(recipe: "Meal 5")



        }
        .padding()
    }
}

#Preview {
    RecipeTileColumn()
}
