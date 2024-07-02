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
        case search
        case calendar
        case grocerylist
    }
    var body: some View {
        TabView(selection: $selection) {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(Tab.home)
            
            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
                .tag(Tab.search)
            CalendarView()
                .tabItem {
                    Label("Calendar", systemImage: "calendar")
                }
                .tag(Tab.calendar)
            GroceryListView()
                .tabItem{
                    Label("Groceries", systemImage: "carrot")
                }
                .tag(Tab.grocerylist)
        }
    }
}

#Preview {
    ContentView()
}
