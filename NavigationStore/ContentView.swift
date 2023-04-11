////  ContentView.swift
//  NavigationStore
//
//  Created by Patricia Carlos on 11/04/23.
//  
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // Navigation view acts a container for navigable views and content
        NavigationView {
            ZStack{
                VStack {
                    Text("Items in Stock").font(.title)
                        .padding()
                    Spacer()
                    // Adding the NavigationLink moves the user to the item screen
                    NavigationLink(
                        destination: ItemDetailView(itemName: "Shrimp Chips"),
                        label: {
                            Text("Item: Shirmp Chips")
                        }
                    )
                    Spacer()
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
