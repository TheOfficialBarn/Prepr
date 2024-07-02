//
//  HomeView.swift
//  WeJim
//
//  Created by Aiden Barnard on 6/22/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationSplitView {
            List {
                Text("My recipes 📋")
            } 
            .navigationTitle("Home 🏠")
        } detail: {
            Text("Hello!")
        }
    }
}

#Preview {
    HomeView()
}
