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
        NavigationStack {
            VStack(spacing: 20) {
                item.image
                    .resizable()
                    .ignoresSafeArea()
                    .blur(radius:50)
                    .overlay {
                        VStack(spacing: 20) {
                            ChosenItemCircleImage(item: item)
                                .padding()
                                .padding(.bottom, 50)
                            NavigationLink {
                                ExpandedGenRecipeResult(item: item, completionResult: completionResult)
                            } label: {
                                GenRecipeResult(completionResult: completionResult)
                                    .transition(.blurReplace)
                                    .id(id)
                                    .padding(.horizontal)
                                    .foregroundStyle(.black)
                            }
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
                            .tint(.black)
                            .foregroundStyle(.primary)
                        }
                    }
            }
            .padding(.bottom)
            .navigationTitle("\(item.name) Recipe")
        }
    }
}

#Preview {
    ChosenItemView(item: foods[0])
}
