//
//  CategoryItem.swift
//  WeJim
//
//  Created by Aiden Barnard on 6/22/24.
//

import SwiftUI


//This is each individual tile
struct CategoryItem: View {
    
    var item: Item
    
    var body: some View {
        VStack(alignment: .leading) {
            item.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(8)
            Text(item.name)
                .foregroundStyle(.primary)
                .font(.caption)
        }
        .padding(.leading, 15) //To give room inbetween horizontal scroll between other foods
    }
}

#Preview {
    CategoryItem(item: food[0])
}
