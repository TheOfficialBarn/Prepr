//
//  ContentView.swift
//  WeJim
//
//  Created by Aiden Barnard on 6/19/24.
//

import SwiftUI


struct ContentView: View {
    
    
    @State private var completionResult: String = "" //This is where the results appear. This variable will update with button
    @State private var isLoading: Bool = false //Is your query being processed currently. Will update with button
    
    
    
    
    
    //Here is where you can do the behind the scenes code stuff and where variables can go
    //These variables belong to ContentView
    
    //@State signals that this variable is subject to change. It is a property wrapper.
    //Apple recommends that local view state ALWAYS be marked with private so you don't accidentally write code that reads one view's local state from another. Makes code easier to understand
    
    @State private var id = 1 //Another local view state so private
    
    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red]
    //This is basically a static array, so don't needa change the state. Also [Color] is the type
    
    var body: some View {
        VStack{
            Text("WeJim").font(.largeTitle.bold()) //Font weight is a method on top of font size
            Text("With OpenAI Integration").font(.title2)
            
            Spacer()
            
            Text("JimQuery:").font(.system(size: 30))
            
            
            
            RoundedRectangle(cornerRadius: CGFloat(20))
                .fill(Color.accentColor)
                .padding(30)
                .overlay(
                    VStack{ //This line stacks the two views inside View
                        Text("Generation rectangle")
                        Text("\(completionResult)")
                            .font(.title) //Title is a Dynamic Type size which will grow or shrink depending on user settings (GOOD)
                    }
                    .transition(.blurReplace) //Sliding transition
                    .id(id)
                )
            

            
            Spacer() //Auto expands to push stuff to the top and stuff below to da bottom
            
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
    ContentView()
}
