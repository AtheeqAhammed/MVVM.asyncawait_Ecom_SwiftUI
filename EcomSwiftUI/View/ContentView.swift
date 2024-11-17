//
//  ContentView.swift
//  EcomSwiftUI
//
//  Created by Ateeq Ahmed on 17/11/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ProductViewModel()
    
    var body: some View {
        NavigationStack {
            
            VStack {
                List(viewModel.products) { products in
                    
                    ProductListView(product: products)
                }
                .listStyle(.plain)
            }
            .navigationTitle("Products")
        }
        .task {
                await viewModel.getProduct()
        }
    }
}

#Preview {
    ContentView()
}
