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
        VStack {
            HStack {
                Text(items[0].category)
                    .font(.headline)
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
                        .buttonStyle(PlainButtonStyle()) //Removes blue text from links.
                    }
                }
                .padding(.horizontal, 15)
            }
        }
        .padding(.vertical, 10)
    }
}

#Preview {
    CategoryRow(items: foods)
    //In this preview everything is gray due to .buttonStyle(...) but it won't be like this in the SearchView
}
