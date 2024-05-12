//
//  ProductData.swift
//  Fern
//
//  Created by Rayan Waked on 5/10/24.
//

import Foundation

struct ProductModel {
    func getProductInfo(for barcode: String, completion: @escaping (Result<Product, Error>) -> Void) {
        guard let url = URL(string: "https://world.openfoodfacts.org/api/v0/product/\(barcode).json") else {
            completion(.failure(MyError.invalidURL))
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.failure(MyError.noData))
                return
            }
            
            do {
                let product = try JSONDecoder().decode(Product.self, from: data)
                completion(.success(product))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
    
    // Define your custom error type
    enum MyError: Error {
        case invalidURL
        case noData
    }
}
