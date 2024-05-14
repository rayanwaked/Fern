//
//  ProductService.swift
//  Fern
//
//  Created by Rayan Waked on 5/11/24.
//

import Foundation

// MARK: - ProductService
struct ProductService {
    // Fetch product details from Open Food Facts API using the product barcode
    static func fetchProduct(barcode: String, completion: @escaping (Result<[String: Any], Error>) -> Void) {
        let urlString = "https://world.openfoodfacts.org/api/v0/product/\(barcode).json"
        
        // Ensure the URL is valid
        guard let url = URL(string: urlString) else {
            let error = NSError(domain: "ProductService", code: -1, userInfo: [NSLocalizedDescriptionKey: "Invalid URL for barcode: \(barcode)"])
            print("Error: Invalid URL for barcode: \(barcode)")
            completion(.failure(error))
            return
        }
        
        // Create a data task to fetch the product data
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            // Handle network error
            if let error = error {
                print("Error: \(error.localizedDescription)")
                completion(.failure(error))
                return
            }

            // Ensure the response is a valid HTTP response
            guard let httpResponse = response as? HTTPURLResponse else {
                let responseError = NSError(domain: "ProductService", code: -2, userInfo: [NSLocalizedDescriptionKey: "Invalid response"])
                print("Error: Invalid response")
                completion(.failure(responseError))
                return
            }

            // Check for successful HTTP status code
            if !(200...299).contains(httpResponse.statusCode) {
                let statusError = NSError(domain: "ProductService", code: httpResponse.statusCode, userInfo: [NSLocalizedDescriptionKey: "HTTP status code: \(httpResponse.statusCode)"])
                print("Error: HTTP status code: \(httpResponse.statusCode)")
                completion(.failure(statusError))
                return
            }

            // Ensure data was received
            guard let data = data else {
                let noDataError = NSError(domain: "ProductService", code: -3, userInfo: [NSLocalizedDescriptionKey: "No data received from the server"])
                print("Error: No data received from the server")
                completion(.failure(noDataError))
                return
            }

            // Attempt to decode the JSON data
            do {
                if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                    completion(.success(json))
                } else {
                    let decodingError = NSError(domain: "ProductService", code: -4, userInfo: [NSLocalizedDescriptionKey: "Decoding JSON failed"])
                    print("Error: Decoding JSON failed")
                    completion(.failure(decodingError))
                }
            } catch {
                print("Error: Decoding failed: \(error.localizedDescription)")
                completion(.failure(error))
            }
        }

        // Start the data task
        task.resume()
    }
}
