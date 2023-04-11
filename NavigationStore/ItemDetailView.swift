////  ItemDetailView.swift
//  NavigationStore
//
//  Created by Patricia Carlos on 11/04/23.
//  
//

import SwiftUI

struct ItemDetailView: View {
    // Generate a random number representing items and store in @State
    @State var quantityRemaining = Int.random(in: 1...10)
    let itemName: String
    var body: some View {
        ZStack {
            VStack {
                Text("\(itemName)").font(.title)
                    .padding()
                Spacer()
                Image(systemName: "photo").font(.system(size: 200))
                    .padding()
                Text("Quantity Remaining: \(quantityRemaining)")
                Spacer()
                Button {
                    if quantityRemaining > 0 {
                        quantityRemaining -= 1
                    }
                } label: {
                    Text("Add one to your cart")
                }
                Spacer()
            }
        }
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetailView(itemName: "Test Item")
    }
}
