//
//  NetworkManager.swift
//  EcomSwiftUI
//
//  Created by Ateeq Ahmed on 17/11/24.
//

import Foundation
//import SwiftUI

enum GHError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
}

class NetworkManager {
    
    func getProducts<T: Codable>(url: String) async throws -> T {
        
        guard let url = URL(string: url) else {
            throw GHError.invalidURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw GHError.invalidResponse
        }
        
        do {
            return try JSONDecoder().decode(T.self, from: data)
        } catch {
            throw GHError.invalidData
        }
    }
}
