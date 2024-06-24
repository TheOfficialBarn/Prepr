//
//  ItemView.swift
//  WeJim
//
//  Created by Aiden Barnard on 6/23/24.
//

import SwiftUI

struct ChosenItemView: View {
    
    var item: Item
    
    @State private var completionResult: String = "" //This is where the results appear. This variable will update with button
    @State private var isLoading: Bool = false //Is your query being processed currently. Will update with button
    //@State signals that this variable is subject to change. It is a property wrapper.
    //Apple recommends that local view state ALWAYS be marked with private so you don't accidentally write code that reads one view's local state from another. Makes code easier to understand
    
    @State private var id = 1 //Another local view state so private
    
    var body: some View {
        VStack {
            Image("LightModeWood")
                .resizable()
                .ignoresSafeArea()
                .scaledToFit()
            CircleImage(item: item)
                .offset(y: -130)
                .padding(.bottom, -130)
            

            VStack(alignment: .leading) {
                HStack {
                    Text("\(item.name) Recipe")
                        .font(.title)
                    Spacer()
                    Button("Generate") {
                        Task {
                            isLoading = true
                            do {
                                let result = try await fetchOpenAICompletion(item: item)
                                
                                //withAnimation() <-- optional () and inside it can be .easeInOut(duration: 1)) {...
                                withAnimation {
                                    completionResult = result.choices.first?.text ?? "No response"
                                    id += 1
                                }
                            } catch {
                                print("Something went wrong 😭 \(error)")
                            }
                        }
                    }
                    .buttonStyle(.bordered)
                }
                RoundedRectangle(cornerRadius: CGFloat(20))
                    .fill(.tertiary)
                    .overlay {
                        ScrollView() {
                            Text(completionResult)
                        }
                        .padding()
                        .transition(.blurReplace)
                        .id(id)
                    }
            }
            .padding()
            
            Spacer() //Forces image to go to the top.
                
                
        }
    }
}

#Preview {
    ChosenItemView(item: foods[0])
}
