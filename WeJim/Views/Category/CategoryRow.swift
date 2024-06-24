//
//  Grid.swift
//  WeJim
//
//  Created by Aiden Barnard on 6/22/24.
//

import SwiftUI

//This is the row of tiles
struct CategoryRow: View {
    
    //Thinking about separating category name from item and putting it in this file.
    var items: [Item]
    
    var body: some View {
        HStack {
            Text(items[0].category)
                .font(.title2)
                .foregroundStyle(.primary)
            Spacer()
        }
        .padding(.horizontal, 15)
        ScrollView(.horizontal, showsIndicators: false) { //showsIndicators is that lil gray scrollbar
            HStack(alignment: .top, spacing: 15) {
                ForEach(items, id: \.name) { item in
                    NavigationLink{
                        ChosenItemView(item: item)
                    } label: {
                        CategoryItem(item: item)
                    }
                }
            }
            .padding(.horizontal, 15)
        }
    }
}

#Preview {
    CategoryRow(items: foods)
}
