//
//  WeJimApp.swift
//  WeJim
//
//  Created by Aiden Barnard on 6/20/24.
//

import SwiftUI
import Firebase

@main
struct WeJimApp: App {
    
    init() {
        FirebaseApp.configure()
        print("Firebase App Configured")
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
