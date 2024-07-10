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


func fetchOpenAICompletion(item: Item) async throws -> CompletionsResult {
    let query = CompletionsQuery(
        model: "gpt-3.5-turbo-instruct",
        prompt: "Generate me a recipe of \(item). Follow this exactly with no extra words: Send ingredients seperated by commas with quantity in parenthesis and then end recipe with a period. I want one serving recipe.",
        temperature: 0.4,
        maxTokens: 100,
        topP: 1,
        frequencyPenalty: 0,
        presencePenalty: 0,
        stop: ["\\n"]
    )

    //Call the API and handle the result
    let result = try await openAI.completions(query: query)
    
    //Returned to be processed later
    return result
}
