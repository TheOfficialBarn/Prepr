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
            VStack(alignment: .leading, spacing: 10) {
                Text(profile.username)
                    .bold()
                    .font(.title)
                Text("Profile Emoji: \(profile.profileEmoji)")
                    

            }
        }
    }
}


#Preview {
    ProfileSummary(profile: Profile.default)
}
