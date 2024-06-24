//
//  Grid.swift
//  WeJim
//
//  Created by Aiden Barnard on 6/22/24.
//

import SwiftUI
//Thinking about separating category name from item and putting it in this file.
var items: [Item] = food

//This is the row of tiles
struct CategoryRow: View {
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            HStack {
                ForEach(items, id: \.name) { item in
                    NavigationLink{
                        //To be added
                    } label: {
                        CategoryItem(item: item)
                    }
                }
            }
        }
    }
}

#Preview {
    CategoryRow()
}
