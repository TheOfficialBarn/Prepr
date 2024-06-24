//
//  CategoryItem.swift
//  WeJim
//
//  Created by Aiden Barnard on 6/22/24.
//
//This is each individual tile

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
                //.foregroundStyle(.primary)
                .font(.caption)
                .padding(.leading, 5)
                
        }
    }
}

#Preview {
    CategoryItem(item: foods[0])
}
