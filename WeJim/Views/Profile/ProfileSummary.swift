//
//  ProfileSummary.swift
//  WeJim
//
//  Created by Aiden Barnard on 7/6/24.
//

import SwiftUI

struct ProfileSummary: View {
    var profile: Profile

    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Text(profile.profileEmoji)
                    .font(.system(size: 100))
                    .shadow(color: .black, radius: 20)
                Text(profile.username)
                    .bold()
                    .font(.title)
                Text(profile.name)
            }
        }
    }
}


#Preview {
    ProfileSummary(profile: Profile.default)
}
