//
//  Profile.swift
//  WeJim
//
//  Created by Aiden Barnard on 7/6/24.
//

struct Profile {
    var username: String
    var name: String
    var profileEmoji: String
    
    static let `default` = Profile(username: "theofficialbarn", name: "Aiden", profileEmoji: "🐐") //The back ticks surrounding default allow use of keywords 🔑, like default
}
