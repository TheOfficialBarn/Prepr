//
//  Grid.swift
//  WeJim
//
//  Created by Aiden Barnard on 6/22/24.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName = "Food"
    var items = ["Burger","Taco","Pizza","Pasta","Steak","Pozole","Tostada","Flauta","Nuggets"]
    
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            HStack {
                ForEach(items, id: \.self) { food in
                    NavigationLink{
                        //To be added
                    } label: {
                        Text(food)
                    }
                }
            }
        }
    }
}

#Preview {
    CategoryRow()
}
