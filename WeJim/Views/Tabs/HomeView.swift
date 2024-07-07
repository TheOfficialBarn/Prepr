//
//  HomeView.swift
//  WeJim
//
//  Created by Aiden Barnard on 6/22/24.
//

import SwiftUI

struct HomeView: View {
    @State private var showingProfile = false
    
    var body: some View {
        NavigationSplitView {
            List {
                Text("My recipes 📋")
            }
            .navigationTitle("Home 🏠")
            .toolbar {
                Button {
                    showingProfile.toggle()
                } label: {
                    Label("User Profile", systemImage: "person.crop.circle")
                }
            }
            .sheet(isPresented: $showingProfile) {
                ProfileHost()
            }
        } detail: {
            Text("Hello!")
        }
    }
}

#Preview {
    HomeView()
}
