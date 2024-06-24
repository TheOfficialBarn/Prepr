//
//  CircleImage.swift
//  WeJim
//
//  Created by Aiden Barnard on 6/23/24.
//

import SwiftUI


struct CircleImage: View {
    
    var item: Item
    
    var body: some View {
        item.image
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
            .padding(.horizontal, 80)
    }
}


#Preview {
    CircleImage(item: foods[0])
}
