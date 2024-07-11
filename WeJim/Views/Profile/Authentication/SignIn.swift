//
//  SignIn.swift
//  WeJim
//
//  Created by Aiden Barnard on 7/10/24.
//

import SwiftUI

struct SignIn: View {
    final class usernameAndPassword: ObservableObject {
        @Published var email = ""
        @Published var password = ""
    }
    @StateObject private var uAndP = usernameAndPassword()
    
    var body: some View {
        
        VStack {
            TextField("Username...", text: $uAndP.email)
                .padding() //Padding goes before so that way the background is bigger
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.gray.opacity(0.5)))
            SecureField("Password...", text: $uAndP.password)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.gray.opacity(0.5)))
            Button("Sign In") {
                
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: 55)
            .background(.blue)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
                
        }
        .padding()
        
        
    }
}

#Preview {
    SignIn()
}
