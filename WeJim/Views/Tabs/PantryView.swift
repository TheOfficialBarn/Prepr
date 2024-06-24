//
//  PantryView.swift
//  WeJim
//
//  Created by Aiden Barnard on 6/22/24.
//
//Might b a lil ambitious but it'd be cool for this to have recipes, current ingredients, and be a shopping list. We could also offload the shopping list to Apple's reminders app for integration with Apple Software.

import SwiftUI

struct PantryView: View {
    var body: some View {
        
        NavigationStack {
            NavigationLink {
                ChosenItemView(item: foods[0])
            } label: {
                CategoryItem(item: foods[0])
            }
        }
    }
}



/*
 import SwiftUI

 struct CategoryItem: View {
     
     var item: Item
     
     var body: some View {
         VStack(alignment: .leading) {
             item.image
                 .renderingMode(.original)
                 .resizable()
                 .frame(width: 155, height: 155)
                 .cornerRadius(10)
             Text(item.name)
                 .fontWeight(.bold)
                 .foregroundStyle(.primary)
                 .font(.caption)
                 
         }
     }
 }

 #Preview {
     CategoryItem(item: foods[0])
 }
 */


#Preview {
    PantryView()
}
