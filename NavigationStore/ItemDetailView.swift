////  ItemDetailView.swift
//  NavigationStore
//
//  Created by Patricia Carlos on 11/04/23.
//  
//

import SwiftUI

struct ItemDetailView: View {
    let itemName: String
    var body: some View {
        ZStack {
            VStack {
                Text("\(itemName)").font(.title)
                    .padding()
                Spacer()
                Image(systemName: "photo").font(.system(size: 200))
                    .padding()
                Text("Quantity Remaining: 3")
                Spacer()
                Button {
                    print("\(itemName) Added to the cart")
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
