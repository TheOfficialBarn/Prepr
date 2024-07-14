//
//  CircleImage.swift
//  WeJim
//
//  Created by Aiden Barnard on 6/23/24.
//

import SwiftUI


struct ChosenItemCircleImage: View {
    
    var item: Item
    
    var body: some View {
        item.image
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.gray, lineWidth: 4)
            }
            .shadow(radius: 10)
            .padding(.horizontal, 50)
    }
}


#Preview {
    ChosenItemCircleImage(item: foods[0])
}
