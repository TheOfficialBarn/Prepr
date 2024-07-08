//
//  ProfileSignIn.swift
//  WeJim
//
//  Created by Aiden Barnard on 7/7/24.
//

import SwiftUI

struct ProfileSignIn: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.indigo,.black], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack(spacing: 50) {
                Image("PreprSignIn")
                Spacer()
                Text("Username")
                Text("Password")
                Button("Sign In") {
                    
                }
                .buttonStyle(.borderedProminent)
                Button("Sign up") {
                    
                }
                .foregroundStyle(.indigo)
            }
            .foregroundStyle(.white)
            .padding(.vertical)
        }
    }
}

#Preview {
    ProfileSignIn()
}
