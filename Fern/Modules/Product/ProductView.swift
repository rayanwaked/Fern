//
//  ProductView.swift
//  Fern
//
//  Created by Rayan Waked on 5/6/24.
//

import SwiftUI

// MARK: - ProductView
struct ProductView: View {
    // Create a state object to hold the product model
    @StateObject private var productModel = ProductModel()
    
    // Initialize the product barcode
    var productBarcode: String

    var body: some View {
        // Create a vertical stack to display the product information
        VStack {
            // If the view model is loading, display a progress view
            if productModel.isLoading {
                ProgressView()
            }
            // If there is an error message, display it in red
            else if let errorMessage = productModel.errorMessage {
                Text("Error: \(errorMessage)")
                   .foregroundColor(.red)
            }
            // Otherwise, display the product name
            else {
                Text(productModel.product?.productName ?? "Product name not available")
            }
        }
        // Load the product when the view appears
       .onAppear {
           productModel.loadProduct(with: productBarcode)
        }
    }
}

// MARK: - Preview
// Preview the product view with a sample barcode
#Preview {
    ProductView(productBarcode: "077900117534")
}
