//
//  Rectangle.swift
//  WeJim
//
//  Created by Aiden Barnard on 6/23/24.
//

import SwiftUI

struct GenerationRectangle: View {
    
    @State private var completionResult: String = "" //This is where the results appear. This variable will update with button
    @State private var isLoading: Bool = false //Is your query being processed currently. Will update with button
    //@State signals that this variable is subject to change. It is a property wrapper.
    //Apple recommends that local view state ALWAYS be marked with private so you don't accidentally write code that reads one view's local state from another. Makes code easier to understand
    
    @State private var id = 1 //Another local view state so private
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: CGFloat(20))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .foregroundStyle(.secondary)
                .padding(15)
                .overlay(
                    VStack{ //This line stacks the two views inside View
                        Text("Generation rectangle")
                        Text("\(completionResult)")
                            .font(.title) //Title is a Dynamic Type size which will grow or shrink depending on user settings (GOOD)
                    }
                        .transition(.blurReplace) //Sliding transition
                        .id(id)
                )
            
            Button("Submit Query") {
                
                Task {
                    isLoading = true
                    do {
                        let result = try await fetchOpenAICompletion()
                        
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
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    GenerationRectangle()
}
