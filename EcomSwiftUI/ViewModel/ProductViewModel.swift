//
//  ProductViewModel.swift
//  EcomSwiftUI
//
//  Created by Ateeq Ahmed on 17/11/24.
//

import Foundation

class ProductViewModel: ObservableObject {
    
    @Published var products: [Products] = []
    private let networkService = NetworkManager()
    
    @MainActor func getProduct() async {
        do {
            products = try await networkService.getProducts(url: "https://fakestoreapi.com/products")
        } catch {
            print(error.localizedDescription)
        }
    }
}
