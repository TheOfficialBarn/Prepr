//
//  ContentView.swift
//  WeJim
//
//  Created by Aiden Barnard on 6/19/24.
//

import SwiftUI


struct ContentView: View {
    @State private var selection: Tab = .home
    
    enum Tab {
        case home
        case generation
    }
    var body: some View {
        TabView(selection: $selection) {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(Tab.home)
            
            GenerationView()
                .tabItem {
                    Label("Generation", systemImage: "cpu")
                }
                    .tag(Tab.generation)
        }
    }
}

#Preview {
    ContentView()
}
