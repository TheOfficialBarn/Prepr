//
//  ProfileSignIn.swift
//  WeJim
//
//  Created by Aiden Barnard on 7/7/24.
//

import SwiftUI

struct Authentication: View {
    @State var username = "" //Will have to be @Published later
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.indigo,.black], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack(spacing: 50) {
                Image("PreprSignIn")
                Spacer()
                SignIn()
                SignUp()
            }
            .foregroundStyle(.white)
            .padding(.vertical)
        }
    }
}

#Preview {
    Authentication()
}
