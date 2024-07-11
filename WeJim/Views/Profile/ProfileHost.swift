//
//  ProfileHost.swift
//  WeJim
//
//  Created by Aiden Barnard on 7/6/24.
//

import SwiftUI

struct ProfileHost: View {
    @State private var draftProfile = Profile.default
    var body: some View {
        VStack(spacing: 20) {
            ProfileSummary(profile: draftProfile)
            Spacer()
            SignOut()
        }
        .padding()
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ProfileHost()
}
