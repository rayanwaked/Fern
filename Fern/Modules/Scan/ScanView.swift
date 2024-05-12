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
            // Instruction text
            Text("Scan a Barcode")
            // ScanModel view to display the camera preview and detect barcodes
            ScanModel(detectedBarcode: $detectedBarcode)
               .frame(height: 300)
            // Display the detected barcode
            Text("Detected Barcode: \(detectedBarcode)")
        }
    }
}

// MARK: - Preview
#Preview {
    ScanView()
}
