//
//  LlamaModel.swift
//  Fern
//
//  Created by Rayan Waked on 5/13/24.
//

import OllamaKit
import Combine
import Foundation
import SwiftUI

//MARK: - LLamaModel
/// LLamaModel class handles inputs and outputs to the model via OllamaKit
class LlamaModel: ObservableObject {
    let ollama = OllamaKit() // Instance of OllamaKit for API interactions.
    @Published var message = "" // Published variable to store the message from the user.
    @Published var response = "" // Published variable to store the response from the model.
    var cancellables = Set<AnyCancellable>() // Set to store any cancellable subscriptions.

    //MARK: - askLlama
    /// Function to send a message to the Llama model and handle the response.
    func askLlama() {
        // Create request data with the model name and messages.
        let requestData = OKChatRequestData(model: "llama3", messages: [OKChatRequestData.Message(role: .user, content: message)])
        
        //MARK: - ollama.chat
        /// Send chat request to the Llama model.
        ollama.chat(data: requestData)
            // Handle completion of the request.
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished:
                    print("Chat completed successfully.")
                case .failure(let error):
                    print("Error: \(error.localizedDescription)")
                }
            }, receiveValue: { [self] chatResponse in
                if let messageContent = chatResponse.message?.content {
                    self.response.append(messageContent)
                } else {
                    print("No message content in response.")
                }
            })
            // Store the subscription in the cancellables set to manage memory.
            .store(in: &cancellables)
    }
}
