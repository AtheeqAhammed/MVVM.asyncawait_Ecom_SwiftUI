//
//  ProductListView.swift
//  EcomSwiftUI
//
//  Created by Ateeq Ahmed on 17/11/24.
//

import SwiftUI

struct ProductListView: View {
    
    var product: Products
    
    var body: some View {
        
        HStack {
            
            AsyncImage(url: URL(string: product.image)) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
            } placeholder: {
                Text("image")
            }
            
            VStack(spacing: 5) {
                Text(product.title)
                    .font(.headline)
                    .fontWeight(.medium)
                    .lineLimit(2)
                
                HStack {
                    Text(product.category)
                        .font(.footnote)
                        .fontWeight(.medium)
                        .foregroundColor(.secondary)
                    
                    Spacer()
                    
                    HStack {
                        Image(systemName: "star.fill")
                            .foregroundStyle(.yellow)
                        
                        Text("\(product.rating.rate.toString())")
                    }
                }
                
                Text(product.description)
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                    .lineLimit(3)
                
                HStack {
                    Text ("\(product.price.currencyFormat())")
                        .font(.title3)
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("Buy")
                    }
                    .buttonStyle(.bordered)
                    .background(.blue)
                    .foregroundStyle(.white)
                    .clipShape(.capsule)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ProductListView(product: Products(id: 1, title: "Bag", description: "Office Bag", price: 29.99, image: "bag", category: "Office", rating: Rating(rate: 4.2, count: 120)))
}
