//
//  ContentView.swift
//  WeJim
//
//  Created by Aiden Barnard on 6/19/24.
//

import SwiftUI


struct SearchView: View {

    @State private var searchText: String = ""
    
    var body: some View {
        NavigationSplitView {
            List {
                CategoryRow(items: foods)
                    .listRowInsets(EdgeInsets()) //These expand the tiles to take up the entire list view
                CategoryRow(items: bevs)
                    .listRowInsets(EdgeInsets())
                CategoryRow(items: alcBevs)
                    .listRowInsets(EdgeInsets())
            }
            .navigationTitle("Recipe Finder")
            .searchable(text: $searchText, prompt: "Search")
            
        } detail: {
            Text("Select a recipe")
        }
    }
}

#Preview {
    SearchView()
}
