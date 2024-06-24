//
//  Food.swift
//  WeJim
//
//  Created by Aiden Barnard on 6/22/24.
//

import Foundation
import SwiftUI

struct Food {
    var name: String
    var isFavorite: Bool
    
    //private var imageName: String = { return name.lowercased() } not necessary. Maybe it would be if importing JSON stuff
    var image: Image {
        Image(name)
    }
}
