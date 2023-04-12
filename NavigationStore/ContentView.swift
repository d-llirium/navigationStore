////  ContentView.swift
//  NavigationStore
//
//  Created by Patricia Carlos on 11/04/23.
//  
//

import SwiftUI

struct ContentView: View {
    let items: [String] = ["1", "2", "3", "4"]
    var body: some View {
        // Navigation view acts a container for navigable views and content
        NavigationView {
            // Children views a user can navigate to and from
            ZStack{
                VStack {
                    Text("Items in Stock").font(.title)
                        .padding()
                    Spacer()
                    ForEach( 0 ..< items.count, id: \.self ) { itemIndex in // Define the view that will be returned for each index
                        NavigationLink(                         // Adding the NavigationLink moves the user to the item screen
                            destination: ItemDetailView(itemName: "\(items[itemIndex])"),
                            label: {
                                Text("Item: \(items[itemIndex])")
                                    .padding()
                                    .border(.blue, width: 4)
                            }
                        )
                        Spacer()
                    }
                }
            }
            // Sets a navigation title of "Navigation Store"
            .navigationTitle(Text("Navigation Store"))
            // Sets the styling of the navigation title to inline
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
