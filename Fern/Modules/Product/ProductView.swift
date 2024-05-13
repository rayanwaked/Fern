//
//  ProductView.swift
//  Fern
//
//  Created by Rayan Waked on 5/6/24.
//

import SwiftUI

// MARK: - ProductView
struct ProductView: View {
    // Product variables and barcode
    @StateObject private var productModel = ProductModel()
    var productBarcode: String

    var body: some View {
        VStack {
            if productModel.isLoading {
                // Display a loading spinner while the product data is loading
                ProgressView()
            } else if let errorMessage = productModel.errorMessage {
                // Display an error message if there was an error loading the product data
                Text("Error: \(errorMessage)")
                    .foregroundColor(.red)
            } else if let product = productModel.product {
                // Display the product name if available
                if let productName = product["product_name"] as? String {
                    Text(productName)
                } else {
                    // Handle case where product name is not available
                    Text("Product name not available")
                }
            } else {
                // Handle case where no product data is available
                Text("No product data available")
            }
        }
        .onAppear {
            // Load the product data when the view appears
            productModel.loadProduct(with: productBarcode)
        }
    }
}

// MARK: - Preview
#Preview {
    ProductView(productBarcode: "5449000000996")
}
