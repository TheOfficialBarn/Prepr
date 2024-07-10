//
//  RecipeTileColumn.swift
//  WeJim
//
//  Created by Aiden Barnard on 7/7/24.
//

import SwiftUI

struct RecipeTileColumn: View {
    var queuedRecipes: [String] = [] //Need to make Recipe structuretype
    var body: some View {
        ScrollView(showsIndicators: false) {
            RecipeTile(recipe: savedRecipes[0])
            RecipeTile(recipe: savedRecipes[1])
            RecipeTile(recipe: savedRecipes[2])
            RecipeTile(recipe: savedRecipes[3])
            RecipeTile(recipe: savedRecipes[4])
            RecipeTile(recipe: savedRecipes[5])
            RecipeTile(recipe: savedRecipes[6])



        }
        .padding()
    }
}

#Preview {
    RecipeTileColumn()
        .ignoresSafeArea() //Doesn't impact actual code
}

//Edit this comment to change the colors
