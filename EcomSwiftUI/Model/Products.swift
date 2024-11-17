//
//  Products.swift
//  EcomSwiftUI
//
//  Created by Ateeq Ahmed on 17/11/24.
//

import Foundation

struct Products: Codable, Identifiable {
    let id: Int
    let title: String
    let description: String
    let price: Double
    let image: String
    let category: String
    let rating: Rating
}

struct Rating: Codable {
    let rate: Double
    let count: Int
}
