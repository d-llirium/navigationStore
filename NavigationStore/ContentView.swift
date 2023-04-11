////  ContentView.swift
//  NavigationStore
//
//  Created by Patricia Carlos on 11/04/23.
//  
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            VStack {
                Text("Items in Stock").font(.title)
                    .padding()
                Spacer()
                Button {
                    // action
                    print("Button tapped")
                } label: {
                    // view for visual presentation
                    Text("Item")
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
