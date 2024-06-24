//
//  ItemView.swift
//  WeJim
//
//  Created by Aiden Barnard on 6/23/24.
//

import SwiftUI

struct ChosenItemView: View {
    
    var item: Item
    
    var body: some View {
        VStack {
            Image("LightModeWood")
                .resizable()
                .ignoresSafeArea()
                .scaledToFit()
            CircleImage(item: item)
                .offset(y: -130)
                .padding(.bottom, -130)
            Spacer() //Forces image to go to the top.
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    ChosenItemView(item: foods[0])
}
