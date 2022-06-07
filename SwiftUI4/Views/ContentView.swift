//
//  ContentView.swift
//  SwiftUI4
//
//  Created by Gualtiero Frigerio on 07/06/22.
//

import SwiftUI

struct ContentView: View {
    @State var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                Text("This is the initial screen")
                    .padding()
                NavigationLink("NavigationLink to enter", value: Destination.firstPage)
                    .padding()
                Button {
                    path.append(Destination.firstPage)
                } label: {
                    Text("Button to enter")
                }
            }
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
