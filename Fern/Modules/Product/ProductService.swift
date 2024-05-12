//
//  ProductService.swift
//  Fern
//
//  Created by Rayan Waked on 5/11/24.
//

import Foundation

// MARK: - ProductService
struct ProductService {

    // MARK: - fetchProduct
    // Use static to allow access without an instance
    static func fetchProduct(barcode: String, completion: @escaping (Result<ProductData, Error>) -> Void) {
        // Create the URL string for the API request
        let urlString = "https://world.openfoodfacts.org/api/v0/product/\(barcode).json"
        
        // Check if the URL is valid
        guard let url = URL(string: urlString) else {
            // If the URL is invalid, return an error
            let error = NSError(domain: "ProductService", code: -1, userInfo: [NSLocalizedDescriptionKey: "Invalid URL for barcode: \(barcode)"])
            print("Error: Invalid URL for barcode: \(barcode)")
            completion(.failure(error))
            return
        }
        
        // Create a URL session task to fetch the product data
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            // Check for errors
            if let error = error {
                print("Error: \(error.localizedDescription)")
                completion(.failure(error))
                return
            }

            // Check if the response is a valid HTTP response
            guard let httpResponse = response as? HTTPURLResponse else {
                // If the response is invalid, return an error
                let responseError = NSError(domain: "ProductService", code: -2, userInfo: [NSLocalizedDescriptionKey: "Invalid response"])
                print("Error: Invalid response")
                completion(.failure(responseError))
                return
            }

            // Check if the HTTP status code is within the 200-299 range
            if !(200...299).contains(httpResponse.statusCode) {
                // If the status code is not within the range, return an error
                let statusError = NSError(domain: "ProductService", code: httpResponse.statusCode, userInfo: [NSLocalizedDescriptionKey: "HTTP status code: \(httpResponse.statusCode)"])
                print("Error: HTTP status code: \(httpResponse.statusCode)")
                completion(.failure(statusError))
                return
            }

            // Check if there is data in the response
            guard let data = data else {
                // If there is no data, return an error
                let noDataError = NSError(domain: "ProductService", code: -3, userInfo: [NSLocalizedDescriptionKey: "No data received from the server"])
                print("Error: No data received from the server")
                completion(.failure(noDataError))
                return
            }

            // Try to decode the product data from the response
            do {
                let productData = try JSONDecoder().decode(ProductData.self, from: data)
                completion(.success(productData))
            } catch {
                // If decoding fails, return an error
                print("Error: Decoding failed: \(error.localizedDescription)")
                completion(.failure(error))
            }
        }

        // Resume the task to start the request
        task.resume()
    }
}
