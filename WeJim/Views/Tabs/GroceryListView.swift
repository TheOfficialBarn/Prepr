//
//  PantryView.swift
//  WeJim
//
//  Created by Aiden Barnard on 6/22/24.
//
//Might b a lil ambitious but it'd be cool for this to have recipes, current ingredients, and be a shopping list. We could also offload the shopping list to Apple's reminders app for integration with Apple Software.

import SwiftUI

struct GroceryListView: View {
    var body: some View {
        VStack {
            Text("Shopping List 🛒")
                .font(.title2)
            List {
                Text("Beef")
                Text("Rice")
                Text("Cheese")
                Text("Oreos")
            }
        }
    }
}






#Preview {
    GroceryListView()
}
