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
        
        VStack{
            Text("Recipe Finder").font(.title.bold()) //Font weight is a method on top of font size
            Text("With OpenAI Integration").font(.title2)
            
            Spacer()
            
            HStack { //Horizontal stack for search bar and search button
                TextField("What's your craving...", text: $searchText)
                    .background(Color.white)
                    .cornerRadius(6) //This will be deprocated soon
                    .shadow(radius: 0.5)
                Button("Search") {
                    //Perform action here
                }
                .buttonStyle(.borderedProminent)//Gray with blue
            }
            .padding(15)
            .shadow(radius: 20, y: 10)
            
            NavigationSplitView {
                ScrollView {
                    CategoryRow(items: foods)
                    CategoryRow(items: bevs)
                    CategoryRow(items: alcBevs)
                }
            } detail: {
                Text("Select a recipe")
            }
        }
    }
}

#Preview {
    SearchView()
}
