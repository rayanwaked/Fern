//
//  ScanModel.swift
//  Fern
//
//  Created by Rayan Waked on 5/6/24.
//

import SwiftUI
import AVFoundation

// MARK: - ScanModel
struct ScanModel: UIViewRepresentable {
    // Binding to store the detected barcode
    @Binding var detectedBarcode: String
    
    // Create a coordinator to handle AVCaptureMetadataOutputObjectsDelegate
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    // MARK: - Coordinator
    class Coordinator: NSObject, AVCaptureMetadataOutputObjectsDelegate {
        // Reference to the parent ScanModel
        var parent: ScanModel

        init(_ parent: ScanModel) {
            self.parent = parent
        }

        // AVCaptureMetadataOutputObjectsDelegate method
        func metadataOutput(_ output: AVCaptureMetadataOutput, didOutput metadataObjects: [AVMetadataObject], from connection: AVCaptureConnection) {
            // Process the detected barcode
            if let metadataObject = metadataObjects.first as? AVMetadataMachineReadableCodeObject {
                if let stringValue = metadataObject.stringValue {
                    // Update the detectedBarcode on the main thread
                    DispatchQueue.main.async {
                        self.parent.detectedBarcode = stringValue
                    }
                }
            }
        }
    }

    // MARK: - UIView creation
    func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: UIScreen.main.bounds)
        let captureSession = AVCaptureSession()

        // Get the default video capture device
        guard let videoCaptureDevice = AVCaptureDevice.default(for:.video) else {
            print("Your device does not support video capture.")
            return view
        }

        // Create a video input
        let videoInput: AVCaptureDeviceInput

        do {
            videoInput = try AVCaptureDeviceInput(device: videoCaptureDevice)
        } catch {
            print("Unable to obtain video input from the device.")
            return view
        }

        // Add the video input to the capture session
        if captureSession.canAddInput(videoInput) {
            captureSession.addInput(videoInput)
        } else {
            print("Could not add video input.")
            return view
        }

        // Create a metadata output
        let metadataOutput = AVCaptureMetadataOutput()

        // Add the metadata output to the capture session
        if captureSession.canAddOutput(metadataOutput) {
            captureSession.addOutput(metadataOutput)
            metadataOutput.setMetadataObjectsDelegate(context.coordinator, queue: DispatchQueue.main)
            metadataOutput.metadataObjectTypes = [.ean8,.ean13,.pdf417] // Customize based on your needs
        } else {
            print("Could not add metadata output")
            return view
        }

        // Create a preview layer
        let previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        previewLayer.frame = view.layer.bounds
        previewLayer.videoGravity = .resizeAspectFill
        view.layer.addSublayer(previewLayer)

        // Start the capture session
        captureSession.startRunning()
        return view
    }

    // MARK: - UIView update
    func updateUIView(_ uiView: UIView, context: Context) {}
}
