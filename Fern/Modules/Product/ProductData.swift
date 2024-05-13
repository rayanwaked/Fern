//
//  ProductModel.swift
//  Fern
//
//  Created by Rayan Waked on 5/11/24.
//

import Foundation

// MARK: - ProductData
struct ProductData: Codable {
    let code: String?
    let product: [String: AnyCodable]?
    let status: Int?
    let statusVerbose: String?

    enum CodingKeys: String, CodingKey {
        case code, product, status
        case statusVerbose = "status_verbose"
    }
}

// MARK: - Custom Decoder for AnyCodable
struct AnyCodable: Codable {
    let value: Any
    
    // Initialize with a generic value
    init(value: Any) {
        self.value = value
    }

    // Decode a value from the decoder
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        
        if let intValue = try? container.decode(Int.self) {
            self.value = intValue
        } else if let doubleValue = try? container.decode(Double.self) {
            self.value = doubleValue
        } else if let stringValue = try? container.decode(String.self) {
            self.value = stringValue
        } else if let boolValue = try? container.decode(Bool.self) {
            self.value = boolValue
        } else if let dictionaryValue = try? container.decode([String: AnyCodable].self) {
            self.value = dictionaryValue
        } else if let arrayValue = try? container.decode([AnyCodable].self) {
            self.value = arrayValue
        } else {
            // Handle type mismatch
            throw DecodingError.typeMismatch(AnyCodable.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unable to decode value"))
        }
    }

    // Encode the value to the encoder
    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()

        if let intValue = value as? Int {
            try container.encode(intValue)
        } else if let doubleValue = value as? Double {
            try container.encode(doubleValue)
        } else if let stringValue = value as? String {
            try container.encode(stringValue)
        } else if let boolValue = value as? Bool {
            try container.encode(boolValue)
        } else if let dictionaryValue = value as? [String: AnyCodable] {
            try container.encode(dictionaryValue)
        } else if let arrayValue = value as? [AnyCodable] {
            try container.encode(arrayValue)
        } else {
            // Handle invalid value
            throw EncodingError.invalidValue(value, EncodingError.Context(codingPath: encoder.codingPath, debugDescription: "Unable to encode value"))
        }
    }
}
