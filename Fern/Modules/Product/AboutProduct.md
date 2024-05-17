# About the "Product" Subdirectory

## Overview

The "Product" subdirectory of the Fern app contains essential components that manage product data, including fetching, decoding, and displaying product information retrieved from the Open Food Facts API. The files within this subdirectory include:

1. `ProductData.swift`
2. `ProductModel.swift`
3. `ProductService.swift`
4. `ProductView.swift`

Each file plays a specific role in handling product-related functionalities within the app.

---

## Files and Documentation

### 1. `ProductData.swift`

#### Description

`ProductData.swift` defines the data structures for product information and a custom decoder for handling various data types.

#### Key Components

- **`ProductData` struct:** Represents the product data with properties `code`, `product`, `status`, and `statusVerbose`. It conforms to the `Codable` protocol for easy encoding and decoding.

- **`AnyCodable` struct:** A custom Codable structure that can encode and decode values of any type, including `Int`, `Double`, `String`, `Bool`, `[String: AnyCodable]`, and `[AnyCodable]`. This is used to handle dynamic data types within the `product` dictionary.

---

### 2. `ProductModel.swift`

#### Description

`ProductModel.swift` contains the `ProductModel` class, which is an observable object that manages the state of product data, including loading status and error messages.

#### Key Components

- **`ProductModel` class:** 
  - **Properties:**
    - `product`: Stores the product data as a dictionary.
    - `isLoading`: Indicates whether the product data is currently being loaded.
    - `errorMessage`: Stores error messages if the product data fails to load.
  - **`loadProduct` method:** Fetches product data using the `ProductService` and updates the properties based on the result.

---

### 3. `ProductService.swift`

#### Description

`ProductService.swift` defines the `ProductService` structure, which handles network requests to fetch product details from the Open Food Facts API.

#### Key Components

- **`ProductService` struct:**
  - **`fetchProduct` method:** 
    - Takes a barcode as input and performs a network request to the Open Food Facts API.
    - Handles various error scenarios such as invalid URL, network errors, invalid HTTP responses, and JSON decoding errors.
    - Returns the result through a completion handler, either as a success with the product data or a failure with an error.

---

### 4. `ProductView.swift`

#### Description

`ProductView.swift` defines the `ProductView` structure, which is a SwiftUI view for displaying product information based on a provided barcode.

#### Key Components

- **`ProductView` struct:**
  - **Properties:**
    - `productBarcode`: The barcode of the product to be displayed.
    - `productModel`: An instance of `ProductModel` to manage product data.
  - **`productInformation` computed property:** A view that displays a loading indicator, error message, or product name based on the state of `productModel`.
  - **`onAppear` modifier:** Triggers the `loadProduct` method when the view appears.

- **`#Preview`:** Provides a preview of `ProductView` with a sample barcode for testing in SwiftUI previews.

---
