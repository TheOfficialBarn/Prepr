//
//  HomeView.swift
//  WeJim
//
//  Created by Aiden Barnard on 6/22/24.
//

import SwiftUI

struct HomeView: View {
    @State private var showingProfile = false
    @State private var showingSettings = false
    
    var body: some View {
        NavigationSplitView {
            List {
                Text("My recipes 📋")
            }
            .navigationTitle("Home 🏠")
            .toolbar {
                //The profile Toolbar button
                ToolbarItem {
                    Button {
                        showingProfile.toggle()
                    } label: {
                        Label("User Profile", systemImage: "person.crop.circle")
                    }
                    .sheet(isPresented: $showingProfile) {
                        ProfileHost()
                    }
                }
                
                //The settings Toolbar button
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        showingSettings.toggle()
                    } label: {
                        Label("Settings", systemImage: "gear")
                    }
                    .sheet(isPresented: $showingSettings) {
                        Settings()
                    }
                }
            }

        } detail: {
            Text("Hello!")
        }
    }
}

#Preview {
    HomeView()
}
