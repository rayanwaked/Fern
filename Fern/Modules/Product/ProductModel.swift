//
//  ProductModel.swift
//  Fern
//
//  Created by Rayan Waked on 5/11/24.
//

import Foundation

// MARK: - ProductModel
class ProductModel: ObservableObject {
    // MARK: - Properties
    // Published properties to notify the view of changes
    @Published var product: Product? = nil
    @Published var isLoading = true
    @Published var errorMessage: String? = nil
    
    // MARK: - loadProduct
    // Load a product by barcode
    func loadProduct(with barcode: String) {
        // Fetch the product data using the ProductService
        ProductService.fetchProduct(barcode: barcode) { result in
            // Switch to the main thread to update the UI
            DispatchQueue.main.async {
                // Set isLoading to false to indicate the loading is complete
                self.isLoading = false
                
                // Handle the result of the fetch operation
                switch result {
                case .success(let productData):
                    // If the fetch is successful, update the entire product object
                    self.product = productData.product
                case .failure(let error):
                    // If the fetch fails, update the errorMessage
                    self.errorMessage = error.localizedDescription
                }
            }
        }
    }
}
