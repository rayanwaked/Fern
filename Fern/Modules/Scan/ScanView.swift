//
//  ScanView.swift
//  Fern
//
//  Created by Rayan Waked on 5/6/24.
//

import SwiftUI

// MARK: - ScanView
struct ScanView: View {
    // State variable to store the detected barcode
    @State private var detectedBarcode = ""

    // MARK: - Body
    var body: some View {
        VStack {
            if detectedBarcode.isEmpty {
                ScanModel(detectedBarcode: $detectedBarcode)
                    .frame(height: 300)
            } else {
                ProductView(productBarcode: detectedBarcode)
            }
        }
    }
}

// MARK: - Preview
#Preview {
    ScanView()
}
