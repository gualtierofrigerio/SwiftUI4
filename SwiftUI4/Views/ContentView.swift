//
//  ContentView.swift
//  SwiftUI4
//
//  Created by Gualtiero Frigerio on 07/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Text("This is the initial screen")
            NavigationLink("tap to enter", value: Destination.firstPage)
                .navigationDestination(for: Destination.self) { destination in
                    ViewFactory.viewForDestination(destination)
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
