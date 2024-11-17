//
//  Ext+Double.swift
//  EcomSwiftUI
//
//  Created by Ateeq Ahmed on 17/11/24.
//

import Foundation

extension Double {
    
    func toString() -> String
    {
        return String(format: "%.1f")
    }
    
    func currencyFormat() -> String
    {
        let formatter = NumberFormatter()
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 2
        formatter.numberStyle = .currency
        return formatter.string(from: NSNumber(value: self)) ?? ""
    }
}
