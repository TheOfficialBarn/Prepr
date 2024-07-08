//
//  Settings.swift
//  WeJim
//
//  Created by Aiden Barnard on 7/7/24.
//

import SwiftUI

//Below adds a modifier to the UIFont, it makes UIFonts rounded! It's private so that way it only affects settings, but there is a bug where opening settings makes the fonts red everywhere.

/*
private extension UIFont {
    func rounded() -> UIFont {
        guard let descriptor = fontDescriptor.withDesign(.rounded) else {
            return self
        }

        return UIFont(descriptor: descriptor, size: pointSize)
    }
}
*/

struct Settings: View {
    
    /* This changes the navigation title to a rounded, pink font
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.systemPink, .font: UIFont.systemFont(ofSize: 34, weight: .bold).rounded()] //I had to google this code
        }
    */
    
    //Body and most code starts here.
    var body: some View {
        NavigationStack {
            Form {
                Text("Hello")
                Text("These are your settings")
                Text("To be implemented later on")
            }
            .navigationTitle("Settings")
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    Settings()
}
