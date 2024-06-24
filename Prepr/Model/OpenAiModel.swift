//
//  OpenAiModel.swift
//  WeJim
//
//  Created by Aiden Barnard on 6/20/24.
//

import Foundation
import OpenAI

//Here is an initialization of the Package's OpenAI class
let openAI = OpenAI(apiToken: "sk-proj-P4YaBSXuPHc164gkVRAFT3BlbkFJHHAd8a7sp5hngWLbFWwe")


func fetchOpenAICompletion() async throws -> CompletionsResult {
    print("We got here")
    
    let query = CompletionsQuery(
        model: "gpt-3.5-turbo-instruct",
        prompt: "Taco recipe",
        temperature: 0.4,
        maxTokens: 100,
        topP: 1,
        frequencyPenalty: 0,
        presencePenalty: 0,
        stop: ["\\n"]
    )
    
    print("Now we here")
    //Call the API and handle the result
    let result = try await openAI.completions(query: query)
    print("helloooooo")
    
    //Returned to be processed later
    return result
}
