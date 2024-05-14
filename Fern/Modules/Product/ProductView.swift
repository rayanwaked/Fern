//
//  ProductView.swift
//  Fern
//
//  Created by Rayan Waked on 5/6/24.
//

import SwiftUI

// MARK: - ProductView
struct ProductView: View {
    // Llama3 instance
    @StateObject private var llamaModel = LlamaModel()
    // Product variables and barcode
    @StateObject private var productModel = ProductModel()
    let productBarcode: String
    @State var llamaTopic = ""

    var body: some View {
        productInformation
        
        if !llamaTopic.isEmpty {
            llamaInformation
        } else {
            Text("waiting")
        }
    }
}

extension ProductView {
    var productInformation: some View {
        VStack {
            if productModel.isLoading {
                ProgressView()
            } else if let errorMessage = productModel.errorMessage {
                // Display an error message if there was an error loading the product data
                Text("Error: \(errorMessage)")
                    .foregroundColor(.red)
            } else if let product = productModel.product {
                // Display the product name if available
                if let productName = product["product_name"] as? String {
                    Text(productName)
                        .onAppear {
                            llamaTopic = productName
                        }
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
    
    var llamaInformation: some View {
        Text("\(llamaModel.response)")
            .onAppear {
                llamaModel.message = "Tell me about \(llamaTopic)"
                llamaModel.askLlama()
            }
    }
}

// MARK: - Preview
#Preview {
    ProductView(productBarcode: "5449000000996")
}
